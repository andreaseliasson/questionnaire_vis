##### A set of parallel coordinate charts for visualising the questionnaire responses #######

library(plotly)
library(dplyr)
packageVersion('plotly')
m <- list(
  l = 50,
  r = 0,
  b = 0,
  t = 0,
  pad = 10,
  autoexpand=FALSE
)
t <- list(
  family = "sans serif",
  size = 10,
  color = 'black'
)
p_sankey <- plot_ly(type = 'parcoords',
             showlegend=TRUE,
             legendgroup="some legend",
             line = list(color = c(1, 2, 3), colorscale = 'Portland'),
             dimensions = list(
               list(range = c(1,7),
                    tickvals = c(1,2,3,4,5,6,7),
                    label = 'Statement 1',
                    values = c(5,6,7),
                    ticktext = c('strongly disagree', 'disagree',
                                 'slightly disagree', 'neutral',
                                 'sligthly agree', 'agree', 'strongly agree')),
               list(range = c(1,7),
                    tickvals = c(1,2,3,4,5,6,7),
                    label = 'Statement 3',
                    values = c(6,7,6),
                    ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
               list(range = c(1,7),
                    tickvals = c(1,2,3,4,5,6,7),
                    label = 'Statement 4',
                    values = c(5,2,2),
                    ticktext=c('.', '-', '-', '-', '-', '-', '-', '-')),
               list(range = c(1,7),
                    tickvals = c(1,2,3,4,5,6,7),
                    label = 'Statement 5',
                    values = c(6,7, 7),
                    ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
               list(range = c(1,7),
                    tickvals = c(1,2,3,4,5,6,7),
                    label = 'Statement 6',
                    values = c(6,5,7),
                    ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
               list(range = c(1,7),
                    tickvals = c(1,2,3,4,5,6,7),
                    label = 'Statement 7',
                    values = c(6,7,5),
                    ticktext=c('-', '-', '-', '-', '-', '-', '-', '-'))
             )
) %>%
  layout(margin = m, height=400, width=600, font=t, autosize=FALSE, title="Sankey diagram")
p_sankey

# participant 1 : blue, participant 2: green, particpant 3: red


##################### Force-directed graph ##########################
p_force <- plot_ly(type = 'parcoords',
                    showlegend=TRUE,
                    legendgroup="some legend",
                    line = list(color = c(1, 2, 3), colorscale = 'Portland'),
                    dimensions = list(
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 1',
                           values = c(6,6,6),
                           ticktext = c('strongly disagree', 'disagree',
                                        'slightly disagree', 'neutral',
                                        'sligthly agree', 'agree', 'strongly agree')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 2',
                           values = c(6,7,7),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 3',
                           values = c(4,3,3),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 4',
                           values = c(6,5,5),
                           ticktext=c('.', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 5',
                           values = c(5,5,5),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 6',
                           values = c(5,5,5),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-'))
                    )
) %>%
  layout(margin = m, height=400, width=600, font=t, autosize=FALSE, title="Force-directed graph")
p_force

######################## Adjacency matrix #########################
p_adj <- plot_ly(type = 'parcoords',
                    showlegend=TRUE,
                    legendgroup="some legend",
                    line = list(color = c(1, 2, 3), colorscale = 'Portland'),
                    dimensions = list(
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 1',
                           values = c(4,4,5),
                           ticktext = c('strongly disagree', 'disagree',
                                        'slightly disagree', 'neutral',
                                        'sligthly agree', 'agree', 'strongly agree')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 2',
                           values = c(6,5,6),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 3',
                           values = c(6,5,6),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 4',
                           values = c(3,3,4),
                           ticktext=c('.', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 5',
                           values = c(6,6,5),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 6',
                           values = c(6,5,4),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-'))
                    )
) %>%
  layout(margin = m, height=400, width=600, font=t, autosize=FALSE, title="Adjacency Matrix")
p_adj


########################## Tree ################################
p_tree <- plot_ly(type = 'parcoords',
                    showlegend=TRUE,
                    legendgroup="some legend",
                    line = list(color = c(1, 2, 3), colorscale = 'Portland'),
                    dimensions = list(
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 1',
                           values = c(6,7,6),
                           ticktext = c('strongly disagree', 'disagree',
                                        'slightly disagree', 'neutral',
                                        'sligthly agree', 'agree', 'strongly agree')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 2',
                           values = c(5,7,5),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 3',
                           values = c(5,7,5),
                           ticktext=c('-', '-', '-', '-', '-', '-', '-', '-')),
                      list(range = c(1,7),
                           tickvals = c(1,2,3,4,5,6,7),
                           label = 'Statement 4',
                           values = c(5,6,6),
                           ticktext=c('.', '-', '-', '-', '-', '-', '-', '-'))
                    )
) %>%
  layout(margin = m, height=400, width=600, font=t, autosize=FALSE, title="Tree")
p_tree
