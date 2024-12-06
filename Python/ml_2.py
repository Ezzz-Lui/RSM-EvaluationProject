#Importamos librerias necesarias

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error, r2_score
import psycopg2
import matplotlib.pyplot as plt
import seaborn as sns

#Cargamos los datos

conexion = psycopg2.connect(
    host = "localhost",
    database = "rsm_db",
    user = "postgres",
    password = "123456"
)

cursor = conexion.cursor()

cursor.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';")
tablas = cursor.fetchall()

nombres_tablas = ["clientes", "productos", "ventas"]

dataframes = {}

for nombre_tabla in nombres_tablas:
    query = f"SELECT * FROM {nombre_tabla};"
    dataframes[nombre_tabla] = pd.read_sql(query, conexion)


df = dataframes["ventas"]

print(df.head())

#Tranformamos los datos

df['fechaventa'] = pd.to_datetime(df['fechaventa'])
df['mes'] = df['fechaventa'].dt.month
df['día'] = df['fechaventa'].dt.day

#Creamos variables dummy

dfcod = pd.get_dummies(df,columns=['region'],drop_first=True)

#Eliminamos datos irrelevantes

dfclean = dfcod.drop(columns= ['ventaid','fechaventa'])

#Asignamos las variables

x = dfclean.drop(columns=['cantidad'])
y = dfclean['cantidad']

#Entrenamiento y pruebas

x_train, x_test, y_train, y_test = train_test_split(x,y,test_size=0.2,random_state=42)

#Random Forest

RF = RandomForestRegressor(random_state=42)
RF.fit(x_train,y_train)

#Predicciones

Pred = RF.predict(x_test)

#Se calculan las métricas

error = mean_squared_error(y_test,Pred,squared=False)
r2 = r2_score(y_test, Pred)

import matplotlib.pyplot as plt
import seaborn as sns


#Valores reales vs Predicciones
plt.figure(figsize=(8, 6))
plt.scatter(y_test, Pred, alpha=0.6, color='blue')
plt.plot([y_test.min(), y_test.max()], [y_test.min(), y_test.max()], '--r', linewidth=2)
plt.title('Valores Reales vs Predicciones')
plt.xlabel('Valores Reales')
plt.ylabel('Valores Predecidos')
plt.grid()
plt.show()

#Distribución de errores
residuales = y_test - Pred
plt.figure(figsize=(8, 6))
sns.histplot(residuales, kde=True, color='red', bins=20)
plt.title('Distribucion de los Errores')
plt.xlabel('Error (Predicciones)')
plt.ylabel('Frecuencia')
plt.grid()
plt.show()

#Resultados
print("Resultados de Random Forest:")
print(f"Error: {round(error, 4)}")
print(f"R cuadrado: {round(r2, 4)}")