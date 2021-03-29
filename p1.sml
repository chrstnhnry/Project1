(* SP " " hi *)

(* EQ = *)

(* PL +  *)

(* MI - *)

(* TI * *)

(* DI / *)

(* ID  - any letters, lower or capitalized *)

(* char option  to char *)
fun chrConv (NONE) = #" "
    | chrConv (SOME char) = char;

(* Tokenizer *) (* take in iostream and look at the next char *)
fun tok (ios) = 
    let
        val token = TextIO.lookahead(ios)
        val tokenN = ord(chrConv(token))
        val word = ""
    in
    (* goes through if the char input is a letter *)
    if tokenN > 64 andalso tokenN < 91 orelse tokenN > 96 andalso tokenN < 123
        then
            print("word\n")
        else
            print("not word\n")
    end;

(* main *) (*     input text file, return  (string * string) * list     *)
fun lex (filename) = tok(TextIO.openIn(filename));

