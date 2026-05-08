PROGRAM grades
    IMPLICIT NONE
! Added (10) to declare array size
    INTEGER, DIMENSION(10) :: scores = (/85,62,45,91,38,74,55,88,61,47/)
    INTEGER :: i
    CHARACTER(len=1) :: grade
    ! Added 'remark' variable because the assignment requires "Remark" in the output.
    CHARACTER(len=11) :: remark
WRITE(*, '(A15, A10, A10, A15)') "S/N", "SCORE", "GRADE", "REMARK"
DO i = 1, 10 ! Changed 'score(i)' to 'scores(i)' to match the variable declaration.
! Updated ranges (80, 60, 40) to match the specific grading scheme in the assignment.
 IF (scores(i) >= 80) THEN
            grade = 'A'
            remark = 'Distinction'
        ELSE IF (scores(i) >= 60) THEN
            grade = 'B'
            remark = 'Credit'
        ELSE IF (scores(i) >= 40) THEN
            grade = 'C'
            remark = 'Pass'
        ELSE
            grade = 'F'
            remark = 'Fail'
        END IF
 ! Added 'remark' to the write statement so it actually appears in the report.
        WRITE(*, '(I15, I10, A10, A15)') i, scores(i), grade, remark
    END DO
    PRINT*, "End of Report"
END PROGRAM grades
! CORRECTION: Removed the duplicate 'END PROGRAM' statement because it causes a compilation error.
