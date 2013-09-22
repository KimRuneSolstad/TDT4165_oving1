declare
fun {Member Xs Y}
   case Xs of H|T then
      if H==Y then
	 true
      else
	 if T==nil then
	    false
	 else
	    {Member T Y}
	 end
      end
   end
end

%Task 8
declare
fun {IsOperator Lexem}
   local Operators = ["+" "-" "*" "/" "=" "=="] in
      {Member Operators Lexem}
   end
end

declare
fun {IsKeyword Lexem}
   local Keywords = ["local" "in" "if" "then" "else" "end"] in
      {Member Keywords Lexem}
   end
end

declare
fun {IsAtom Lexem}
   case Lexem of H|T then
      if H > 96 then
	 if H < 121 then
	    true
	 else
	    false
	 end
      else
	 false
      end
   end
end

declare
fun{IsVar Lexem}
   case Lexem of H|T then
      if H > 64 then
	 if H < 91 then
	    true
	 else
	    false
	 end
      else
	 false
      end
   end
end


declare
fun{Tokenize Lexems}
   case Lexems of H|T then
      if T == nil then
	 if {IsKeyword H} then
	    key(H)
	 else
	    if{IsOperator H} then
	       op(H)
	    else
	       if{IsAtom H} then
		  atom(H)
	       else
		  if{IsVar H} then
		     var(H)
		  else
		    %illegal(H)
		     raise unsupportedLexemException(H)
		     end
		  end
	       end	  
	    end
	 end
      else
	 if {IsKeyword H} then
	       key(H)|{Tokenize T}
	 else
	    if{IsOperator H} then
	       op(H)|{Tokenize T}
	    else
	       if{IsAtom H} then
		  atom(H)|{Tokenize T}
	       else
		  if{IsVar H} then
		     var(H)|{Tokenize T}
		  else
		     %illegal(H)|{Tokenize T}
		     raise unsupportedLexemException(H) end
		  end
	       end
	    end
	 end
      end
   end
end

try
   {Browse{Tokenize ["else" "misc" "+" "Count"]}}
catch X then
   {Browse X}
end

   
