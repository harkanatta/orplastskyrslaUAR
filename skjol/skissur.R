lina <- c("3.150 t","27-63 %","850-2.000 t","20 %","67 %","740-1.720 t","1,6 %","11,8-27,5 t","2,5 %","18,2-41,2 t")
#lina2 <- c("Tonn", "%", "Tonn", "%", "%", "Tonn", "%", "Tonn", "%", "Tonn")
lina3 <- c("Innflutt málning","Hlutur utanhúss-málningar","","Plastefni","Sundrun","Eftirstandandi","Háþrýsti-þvottur","","Uppspretta vegna slits","")
lina <- data.frame(lina3,lina)
lina <- unname(lina)

kable(lina,align = "l",format = 'latex', caption = 'Áætluð árleg losun örplasts í hafið frá útimálningu á Íslandi.' , booktabs = T) %>% kable_styling(latex_options = "striped")
  
  lina <- c("3.150 t","37-73 %","1.165-2.300 t","20 %","230-460 t", "3-15 %","3,2-7,1 t")
  #lina2 <- c("Tonn", "%", "Tonn", "%","Tonn", "%", "Tonn")
  lina3 <- c("Innflutt málning","Innanhúss-málningar","Samtals","Hlutfall Plastefna","","Ónýtt málning","Losun vegna skolunar")
  lina <- data.frame(lina3,lina)
  lina <- unname(lina)
  kable(lina,align = "l",format = 'latex', caption = 'Áætluð árleg losun örplasts í hafið frá innanhússmálningu á Íslandi.', booktabs = T) %>% kable_styling(latex_options = "striped")
  
  
  