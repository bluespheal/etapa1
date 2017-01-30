students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]], 
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0 

  while y < students.length 
    current_student  = students[y][x]

    if current_student[1] == 10
      best_students.push(current_student[0])
    end

    if x == (students[y].length - 1)
      x = 0 
      y += 1 
    else
      x += 1 
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

# Set students array
# DEFINE new method that receives students array
#   Set empty array best_students
#   Set array coordinates to 0
#   WHILE coordinate y < length of students array
#     Set new variable to the coordinates in students
#     IF the student's grade is 10
#       THEN push the student's name to best_students
#     ENDIF
#     IF coordinate x is less than student's length 
#       THEN reset coordinate x to zero and add one to coordinate y
#       ELSE add one to coordinate x
#     ENDIF
#   ENDWHILE
#   RETURN best_students
# ENDDEFINE

CALL method and check IF EQUALS to proof