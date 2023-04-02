def print_second_lowest_students(students):
    students.sort(key=lambda x: (x[1], x[0]))
    second_lowest = sorted(set([s[1] for s in students]))[1]
    second_lowest_students = [s[0] for s in students if s[1] == second_lowest]
    second_lowest_students.sort()
    for student in second_lowest_students:
        print(student)
