https://github.com/rahulkhengare/terraform-azurerm-webapp/blob/master/.travis.yml

1. run terraform

3. configure DB connection
az webapp config appsettings set --settings SPRING_DATASOURCE_URL="jdbc:mysql://<mysql_server_name>.mysql.database.azure.com:3306/tododb?verifyServerCertificate=true&useSSL=true&requireSSL=false" --resource-group myResourceGroup --name <app_name>