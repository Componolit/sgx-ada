package Ocall is

    procedure Print_String (Data : String)
        with Global => null,
             Import => True,
             Convention => C,
             External_Name => "ocall_print_string";

end Ocall;
