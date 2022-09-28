import boto3
import os
client = boto3.client('ec2', region_name= os.getenv('region'))


try:
        id_instaces = input ("Insira o ID da sua instância: ")

        response = client.start_instances(
        InstanceIds=[id_instaces]
        )

        print(response)


except:

        print('ID não encontrado, tente novamente')