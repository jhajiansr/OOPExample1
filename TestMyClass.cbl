       identification division.
       program-id. Program1 as "TestMyClass".
       environment division.
       configuration section.

       data division.
       working-storage section.
       01 an-obj type MyClass.
       01 your-name pic x(20) property.
       01 a-name pic x(20).
       procedure division.
      *    set an-obj to new MyClass(a-name as string)

      *    set your-name = an-obj::ToString()
           display "Enter name to be displayed."
           accept a-name
           move a-name to your-name
          
           set an-obj to new MyClass(your-name)
           invoke an-obj::SayHello()
           

       end program.
