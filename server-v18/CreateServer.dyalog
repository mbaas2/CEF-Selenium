 CreateServer;evnt;hr
 'hr'⎕WC'htmlrenderer'
 ⍝hr.ShowDevTools 1
 hr.InterceptedURLs←1 2⍴'*'1   ⍝ intercept ALL URLs
 hr.onHTTPRequest← 'HandleHTTTPRequest'
 :Repeat
     evnt←⎕DQ hr
     ⎕SE.Dyalog.Utils.display evnt
 :Until 0=≢evnt
