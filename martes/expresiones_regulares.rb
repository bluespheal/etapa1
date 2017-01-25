def find_account_number(string)
  true if string.match /\d{4}-\d{3}-\d{3}/
end

def return_account_number(string)
  returning = /\d{4}-\d{3}-\d{3}/
  match = returning.match(string)
  match.to_s.empty? ? nil : match.to_s
end

def return_array_account_number(string)
  returning = /\d{4}-\d{3}-\d{3}/ 
  empty_array = []
  array = string.scan(returning)
  array.length < 2 ? empty_array : array
end

def replace_first_seven(string)
  returning = /\d{4}-\d{3}-\d{3}/
  array = string.scan(returning).join(", ")
  array.to_s.empty? ? nil : array.to_s.strip.gsub(/(\d{4}-\d{3})/, "XXXX-XXX")
end

def format_string(string)
  returning = /\d{10}|\d{4}.\d{3}.\d{3}/
  same = /\d+/
  match = returning.match(string)
  match = match.to_s.split(".").join
  match.to_s.empty? ? same.match(string).to_s : match.scan(/(.{4})(.{3})(.{3})/) {|a,b,c| return a + "-" + b + "-" + c}
end

p find_account_number("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == true
p find_account_number("El Cliente con el número de cuenta 1234-12-1233 se encuentra en proceso de revisión de sus documentos") == nil
p find_account_number("El Cliente con el número de cuenta 2536-943-443 se encuentra en proceso de revisión de sus documentos") == true
p find_account_number("El Cliente con el número de cuenta 12-1233 se encuentra en proceso de revisión de sus documentos") == nil

p return_account_number("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == "1234-123-123"
p return_account_number("El Cliente con el número de cuenta 123-1223-123 se encuentra en proceso de revisión de sus documentos") == nil
p return_account_number("El Cliente con el número de cuenta 1261-343-775 se encuentra en proceso de revisión de sus documentos") == "1261-343-775"
p return_account_number("El Cliente con el número de cuenta 1 se encuentra en proceso de revisión de sus documentos") == nil

p return_array_account_number("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311") == ["1234-123-123", "4321-321-311"]
p return_array_account_number("Hay que transferir los fondos de la cuenta 1314-133-773 a la cuenta 4663-264-754") == ["1314-133-773", "4663-264-754"]
p return_array_account_number("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 311") == []
p return_array_account_number("Hay que transferir los fondos de la cuenta 1234-14323-123 a la cuenta 4321-321-311") == []

p replace_first_seven("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == "XXXX-XXX-123"
p replace_first_seven("El Cliente con el número de cuenta 1-1233-123 se encuentra en proceso de revisión de sus documentos") == nil
p replace_first_seven("El Cliente con el número de cuenta XXXX-XXXX-999 se encuentra en proceso de revisión de sus documentos") == nil
p replace_first_seven("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311") == "XXXX-XXX-123, XXXX-XXX-311"

p format_string("El Cliente con el número de cuenta 1234123123 se encuentra en proceso de revisión de sus documentos") == "1234-123-123"
p format_string("El Cliente con el número de cuenta 7827.124.329 se encuentra en proceso de revisión de sus documentos") == "7827-124-329"
p format_string("El Cliente con el número de cuenta 782 se encuentra en proceso de revisión de sus documentos") == "782"
p format_string("El Cliente con el número de cuenta 782892 se encuentra en proceso de revisión de sus documentos") == "782892"