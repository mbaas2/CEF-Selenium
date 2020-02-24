 R←HandleHTTTPRequest arg;body
 ⎕SE.Dyalog.Utils.display arg
 R←arg
 :If 'http://localhost/'≡17↑8⊃R
     R[4 5 6 7]←1 200 'OK' 'text/html'
     body←'<html><body><p>Repling to your request for ',8⊃R
     body,←'</p></body></html>'
     R[10]←⊂body
 :Else
     ⎕←'Request not handled'
 :EndIf
