       identification division.
       class-id MyClass.
       environment division.
       configuration section.

       data division.
       
       working-storage section.
       01 your-name pic x(10).

       method-id new.

       procedure division using by value a-name as string.
           set your-name to a-name
       end method.
       method-id SayHello.

       procedure division.
           display "hello " & your-name
       end method.

       
       end class.