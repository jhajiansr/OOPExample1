       class-id MyClass.

       method-id SayHello static.

       linkage section.

       01 your-name pic x(10).

       procedure division using by value your-name.
           display "hello " & your-name
       end method.

       end class.