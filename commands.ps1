
#correct 

az role assignment create \
  --assignee ad5dc6c2-774c-4070-abcf-0385406fcbc9 \
  --role "Storage Blob Data Contributor" \
  --scope "/subscriptions/0dff3de7-eade-40a0-822b-87187ef66758/resourceGroups/backend-storage/providers/Microsoft.Storage/storageAccounts/adostorage01"
