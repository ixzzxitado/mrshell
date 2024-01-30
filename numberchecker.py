import os
import phonenumbers
		
os.system("clear")
def operad():
        from phonenumbers import geocoder
        from phonenumbers import carrier
        #Ajuste do telefone para usar o phonenumbers
        num = (f"{zapnumber}")
        telefone_ajustado = phonenumbers.parse(num)
        print(telefone_ajustado)
        #Descobrir a localização do telefone
        region = geocoder.description_for_number(telefone_ajustado, 'pt-br')
        print(f"\033[5;49;91m Region: {local}\033[m")
        operator = carrier.name_for_number(telefone_ajustado,'pt-br')
        print(f"\033[5;49;92m Operator: {operadora}")
print("")
print("\033[5;49;91m Não digite o mesmo número várias veses!!!\033[m")
print("")
zapnumber = input("Write the number with '+'(all together): ")
print("")
operad()
print("")
