program Treg;

uses unit1;

 var x1, x2, x3, y1, y2, y3, a, b, c :real;
 var flag, pramik :boolean;
begin
     writeln('������ x ��� �窨 �');
     readln(x1);
     writeln('������ y ��� �窨 �');
     readln(y1);
     writeln();

     writeln('������ x ��� �窨 B');
     readln(x2);
     writeln('������ y ��� �窨 B');
     readln(y2);
     writeln();

     writeln('������ x ��� �窨 C');
     readln(x3);
     writeln('������ y ��� �窨 C');
     readln(y3);

     a := sqrt(( sqr(x2-x1) + sqr(y2-y1) ));
     b := sqrt(( sqr(x3-x2) + sqr(y3-y2) ));
     c := sqrt(( sqr(x3-x1) + sqr(y3-y1) ));
     writeln(a:8:3, b:8:3, c:8:3);

     writeln();
     writeln();

     if a+b>=c then
        begin
        if b+c>=a then
           begin
               if a+c>=b then
                  begin

                      writeln('��㣮�쭨� �������');
                      flag := true;
                  end
           end
        end
     else
     begin
         writeln('��㣮�쭨� �� �������');
         flag := false;
     end;

     writeln();
     writeln();
     writeln();

     if (flag = true) then
        begin

            if ((a=b) and (b=c)) then
               begin
                   writeln('�������஭��� ��㣮�쭨�');
               end
            else if ((a=b) or (a=c) or (b=c)) then
                   begin
                       writeln('��������७�� ��㣮�쭨�');
                   end;

            if ((sqrt(sqr(a)+ sqr(c))) = b) then pramik:=true;
            if ((sqrt(sqr(b)+ sqr(c))) = a) then pramik:=true;
            if ((sqrt(sqr(a)+ sqr(b))) = c) then pramik:=true;

            if  pramik = true  then

                   begin
                       writeln('��אַ㣮��� ��㣮�쭨�');
                   end
            else
                writeln('�� ��אַ㣮��� ��㣮�쭨�');
        end;


     readln();
end.

