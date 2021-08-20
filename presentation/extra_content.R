# ggplot extra content



---
     
     
     # Bar plot - adjacent with text  
     
     .pull-left[
          
          To display text on adjacent bars, add the `group=` argument in `aes()`, and adjust `geom_text(position=)` as below.  
          
          ```{r, echo = T, eval=F}
          ggplot(
               data = linelist_eth_died,
               mapping = aes(
                    x = eth_race,
                    y = n,
                    *   group = died,
                    fill = died,
                    label = n)) +             
               geom_col(position = "dodge") +
               geom_text(
                    size = 3,
                    *   position = position_dodge(width = 1),
                    vjust = -1)
          ```
          
     ]

.pull-right[
     
     ```{r, echo=F, eval=T}
     ggplot(
          data = linelist_eth_died,
          mapping = aes(
               x = eth_race,
               y = n,
               fill = died,
               group = died,
               label = n)) +             
          geom_col(position = "dodge") +
          geom_text(size = 3, position = position_dodge(width = 1), vjust = -1) + 
          theme_grey(base_size = 16)
     
     ```
     
]




---
     
     
     # Bar plot - flip axes with text  
     
     .pull-left[
          
          If flipping axes, you will need to manually adjust `hjust=` in `geom_text()` to meet your needs.  
          
          ```{r, echo = T, eval=F}
          ggplot(
               data = linelist_eth_died,
               mapping = aes(
                    x = eth_race,
                    y = n,
                    group = died,
                    fill = died,
                    label = n)) +             
               geom_col(position = "dodge")+
               geom_text(
                    size = 3,
                    position = position_dodge(width = 1),
                    * hjust = -1) +
               *coord_flip()    # flip axes
          ```
          
     ]

.pull-right[
     
     ```{r, echo=F, eval=T}
     ggplot(
          data = linelist_eth_died,
          mapping = aes(
               x = eth_race,
               y = n,
               fill = died,
               group = died,
               label = n)) +             
          geom_col(position = "dodge")+
          geom_text(size = 3, position = position_dodge(width = 1), hjust = 1) +
          coord_flip() + 
          theme_grey(base_size = 16)
     
     ```
     
]

