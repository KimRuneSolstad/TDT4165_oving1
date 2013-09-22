%Task 7 d)
declare
fun {Append Xs Ys}
   if Xs==nil then
      Ys
   else
      case Xs of H|T then
	 H|{Append T Ys}
      end
   end
end
{Browse{Append [1 2 3 4] [5 6 7 8]}}

%Task 7 e)
declare
fun {Member Xs Y}
   case Xs of H|T then
      if H == Y then
	 true
      else
	 if T == nil then
	    false
	 else
	    {Member T Y}
	 end
      end
   end
end
{Browse {Member [1 2 3 4 5 6 7 8] 8}}
{Browse {Member [1 2 3 4 5 6 7 8] 9}}

%Task 7 f)
declare
fun {Position Xs Y}
   case Xs of H|T then
      if H == Y then
	 1
      else
	 1 + {Position T Y}
      end
   end
end
{Browse {Position [1 3 5] 3}}
