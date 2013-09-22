% a)
declare
fun{SumTo FirstInteger LastInteger}
   if FirstInteger >= LastInteger then
      FirstInteger
   else
      FirstInteger + {SumTo FirstInteger+1 LastInteger}
   end
end
{Browse{SumTo 3 5}}
{Browse{SumTo 0 2}}


		      
