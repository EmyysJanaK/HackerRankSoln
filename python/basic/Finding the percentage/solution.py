def get_average_score(student_marks, query_name):
    scores = student_marks.get(query_name, [])
    if scores:
        return sum(scores) / len(scores)
    print("No scores found for the student.")
    return 0.0
