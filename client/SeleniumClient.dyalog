:namespace SeleniumClient

∇ Run 
SetUsing''
opts←⎕NEW  Chrome.ChromeOptions
opts.DebuggerAddress←'127.0.0.1:8080'
drv←⎕NEW  OpenQA.Selenium.Chrome.ChromeDriver opts
drv.Navigate.GoToUrl⊂'http://localhost/MyFirstRequest'
∘∘∘
∇

    ∇ {files}←SetUsing path ⍝ Set the path to the Selenium DLLs
      :If path≡'' ⋄ path←1⊃1 ⎕NPARTS SourceFile ⎕THIS ⋄ :EndIf
      files←'dll' 'support.dll',¨⍨⊂path,'webdriver.'
      ⎕USING←0⍴⎕USING
      ⎕USING,←⊂('/'⎕R'\\')'OpenQA.Selenium,',⊃files
      ⎕USING,←⊂('/'⎕R'\\')',',⊃⌽files
    ∇

      SourceFile←{ ⍝ Get pathname to sourcefile for ref ⍵
          file←4⊃5179⌶⍵ ⍝ ⎕FIX
          ''≡file~' ':⍵.SALT_Data.SourceFile ⍝ SALT
          file
      }
:endnamespace
