! Fortran has overloading of functions via INTERFACE; one name for 
!  many functions, identified by their signature 

MODULE exampleDispatch
  IMPLICIT NONE

  INTERFACE fun
     MODULE PROCEDURE Fun1arg, Fun2arg
  END INTERFACE fun

  CONTAINS

    ! A function that takes one argument
    ! and multiplies it by 100
    REAL FUNCTION Fun1arg(arg1)
      IMPLICIT NONE
      REAL, INTENT( IN ) :: arg1
      Fun1arg = arg1 * 100.0
    END FUNCTION Fun1arg

    ! A function that takes two arguments
    ! and multiplies them
    REAL FUNCTION Fun2arg(arg1, arg2)
      IMPLICIT NONE
      REAL, INTENT( IN ) :: arg1, arg2
      Fun2arg = arg1 * arg2
    END FUNCTION Fun2arg

END MODULE exampleDispatch

PROGRAM dispatch

  USE exampleDispatch

  IMPLICIT NONE
  REAL :: a = 5.0
  REAL :: fun

  PRINT *, fun(a)
  PRINT *, fun(a, a)

END PROGRAM dispatch
