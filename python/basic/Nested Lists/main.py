from student_utils import print_second_lowest_students

if __name__ == '__main__':
    students = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students.append([name, score])
    print_second_lowest_students(students)