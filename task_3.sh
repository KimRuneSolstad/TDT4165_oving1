%oppg a)
declare
fun {Min X Y}
   if X<Y then
      X
   else
      Y
   end
end

%oppg b)
declare
fun {IsBigger Number1 Threshold}
   if Number1 > Threshold then
      true
   else
      false
   end
end

{Browse{Min 4 7}}
{Browse{IsBigger 10 20}}