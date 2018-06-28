package body Ocall is

   procedure Put (Data : String) is
   begin
       Ocall_Print_String (Interfaces.C.To_C (Item => Data, Append_Nul => True));
   end Put;

   procedure Put_Line (Data : String) is
   begin
       Puts (Interfaces.C.To_C (Item => Data, Append_Nul => True));
   end Put_Line;

   function Get_Line return String is
      Data : Interfaces.C.char_array (1 .. 1024) := (others => Interfaces.C.char'Val(0));
   begin
      Ocall_Get_String (Data, 1024);
      return Interfaces.C.To_Ada (Data);
   end Get_Line;

end Ocall;
