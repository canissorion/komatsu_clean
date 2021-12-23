
# Komatsu Clean

Presentation / Presentación: Contiene toda la parte visual de nuestra app y por lo general esta es la parte más “Sucia” en cuanto a código, estos widgets contienen las llamadas y el estado, la idea en Clean Code es separarlo en Widgets y Logic Holders(Carpetas y archivos que contengan la lógica).


## Presentation

![App Screenshot](https://i.ibb.co/VD9ngyY/presentation.png)


## Domain

Domain / Dominio: En esta capa tendremos todos los archivos que no son susceptibles a cambios de información o de fuente, contendrá los usos de caso, lógica de negocio, objetos de negocio(entidades) y será independiente del resto de las capas. Aunque esta capa esta separada del resto, se une con el repositorio el cual contiene los contratos con los modelos.


![App Screenshot](https://i.ibb.co/S6PpfcX/domain.png)

## Data

Data: Esta capa contiene la implementación del repositorio comentada anteriormente, esta capa se comparte con el dominio ya que los contratos son definidos en esa capa. Por lo tanto, aquí se define la implementación y la fuente de los datos (api calls, etc.), por otra parte, aquí también definiremos la fuente de los datos locales (Data guardada en el celular), los modelos también son parte de esta capa.

![App Screenshot](https://i.ibb.co/cTVw7CR/data.png)
