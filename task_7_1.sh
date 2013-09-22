%Task 7 a)
declare
fun {Length Xs}
   case Xs of H|T then
      if T==nil then
	 1
      else
	 1 + {Length T}
      end	 
   end
end
{Browse{Length[4 3 2 1 0]}}

%Task 7 b)
declare
fun {Take Xs N}
   case Xs of H|T then
      if N==0 then
	 nil
      else
	 H|{Take T N-1}
      end
   end
end
{Browse{Take [1 2 3 4 5 6 7 8] 5}}

%Task 7 c)
declare
fun {Drop Xs N}
   case Xs of H|T then
      if T==nil then
	 H|nil
      else
	 if N==0 then
	    H|{Drop T N}
	 else
	    {Drop T N-1}
	 end
      end
   end
end

{Browse{Drop [1 2 3 4 5 6 7 8] 5}}
