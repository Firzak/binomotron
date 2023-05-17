import random
import mysql.connector 
mydb = mysql.connector.connect(

host="localhost",

port="3307",

user="root",

password="example",

database = "Binomotron"

)


#connexion à notre serveur sql
#Recuperer les données de la table Apprenant
cursor= mydb.cursor()
query="SELECT Nom, Prenom FROM Apprenant"
cursor.execute(query)
Liste_apprenants=cursor.fetchall()
Taille_Liste=len(Liste_apprenants)

#On a remplit une liste avec tous les apprenants

random.shuffle(Liste_apprenants) #melange de la liste des apprenants
groupe=[]
groupes=[]
i=0
for i in range(0,Taille_Liste, 2):   # while i<len(Liste_apprenants):
    if i +1 <Taille_Liste-1:
        groupe=[Liste_apprenants[i],Liste_apprenants[i+1]]
        groupes.append(groupe)    #append ajoute les elements dans une liste groupes
    elif i +1 > Taille_Liste-1:
        groupe=[Liste_apprenants[i], None] #si nombre impairs , retour avec un groupe de 1
        groupes.append(groupe)
        i += 2  #passe au prochain groupe de deux
        #print(groupes)#


def display_groupes(groupes): #On  appelle ici une fonction pour l'esthtetisme de l'affichage des groupes
    for groupe in groupes:
        print(groupe)
        
display_groupes(groupes)


cursor.close()
