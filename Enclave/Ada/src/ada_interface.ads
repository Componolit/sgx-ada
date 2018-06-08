package Ada_Interface is

    procedure Ada_Main
        with Global => null,
             Export => True,
             Convention => C,
             External_Name => "ada_main";

end Ada_Interface;
