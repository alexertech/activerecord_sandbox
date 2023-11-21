# Create some teachers
teacher1 = Teacher.create(name: 'Mr. Smith', age: 40, subject: 'Math')
teacher2 = Teacher.create(name: 'Ms. Johnson', age: 35, subject: 'Language')

# Create some classes
class1 = Klass.create(name: 'Algebra I', period: 'Morning', teacher_id: teacher1.id)
class2 = Klass.create(name: 'British Literature', period: 'Afternoon', teacher_id: teacher2.id)

# Create some students
student1 = Student.create(name: 'Alex', age: 15)
student2 = Student.create(name: 'Emily', age: 16)
student3 = Student.create(name: 'John', age: 14)

# Enroll students in classes
Enrollment.create(student_id: student1.id, klass_id: class1.id, grade: 'A')
Enrollment.create(student_id: student2.id, klass_id: class2.id, grade: 'B+')
Enrollment.create(student_id: student3.id, klass_id: class1.id, grade: 'A-')