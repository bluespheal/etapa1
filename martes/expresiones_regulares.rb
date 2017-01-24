def find_account_number(string)
  if string.match /\d{4}-\d{3}-\d{3}/
    true
  end
end

def return_account_number(string)
  if string.match /\d{4}-\d{3}-\d{3}/
    p string.match /\d{4}-\d{3}-\d{3}/
  else
    nil
  end
end

p find_account_number("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == true
p find_account_number("El Cliente con el número de cuenta 1234-12-1233 se encuentra en proceso de revisión de sus documentos") == nil
p find_account_number("El Cliente con el número de cuenta 2536-943-443 se encuentra en proceso de revisión de sus documentos") == true
p find_account_number("El Cliente con el número de cuenta 12-1233 se encuentra en proceso de revisión de sus documentos") == nil

p return_account_number("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == "1234-123-123"


