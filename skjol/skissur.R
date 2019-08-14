nafn <- c('Bifreiðahjólbarðar',
          'Vegmerkingar',
          'Flugvélahjólbarðar',
          'Húsamálning',
          'Skipamálning',
          'Gervigras',
          'Leikvellir',
          'Þvottur',
          'Snyrtivörur',
          'Haglaskot',
          'Sigvatn')

lagt <- c(371, 41, 26, 33.2, 60, 3, 0.2, 8.2, 0.34, 1, 0.002)
hatt <- c(586, 256, 50, 77.1, 260, 11, 2, 32, 3.4, 3, 0.177)
losun <- c(164, 5.7, NA, 15.2, 3.2, 0.3, NA, 8.2, 0.34, NA, 0.002)
losunb <- c(234, 42.6, NA, 36.1, 10, 1.1, NA, 32, 3.4, NA, 0.177)

tafla <- data.frame(nafn,lagt,hatt,losun,losunb)
names(tafla) <- c('','Hærra mat','Lægra mat','Hærra mat','Lægra mat')
tafla <- format(tafla,  decimal.mark=",", big.mark=".", drop0trailing=T)
require(kableExtra)

if (knitr::is_html_output()) {
  knitr::kable(tafla, booktabs=T, align = "c", caption = 'Samantekt á þeim uppsprettum örplasts sem kannaðar voru og mat á losun frá þeim í hafið' ) %>%
    kable_styling("striped",full_width = T) %>%
    add_header_above(c(" "=1,'Uppspretta (t)'=2, 'Losun í haf (t)'=2)) %>% 
    column_spec(1, bold = T)
} else{
  knitr::kable(tafla, booktabs=T, align = "c", caption = 'Samantekt á þeim uppsprettum örplasts sem kannaðar voru og mat á losun frám þeim í hafið' )
  
}  