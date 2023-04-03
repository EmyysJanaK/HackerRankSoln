from solution import get_average_score

if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()

    average_score = get_average_score(student_marks, query_name)
    print(f"{average_score:.2f}")