class Grading
    def final_grade(exam, projects)
        return 100 if exam > 90 || projects > 10
        return 90 if exam > 75 && projects >= 5
        return 75 if exam > 50 && projects >= 2
        0 
    end
end