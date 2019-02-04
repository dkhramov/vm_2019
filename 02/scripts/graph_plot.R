library(DiagrammeR)

grViz("
      digraph mygraph {
        node [shape=box];
        a [label='Реальный объект'];
        a -> b;
        b [label='Содержательная модель'];
        b -> c;
        c [label='Математическая модель'];
      }
      ")
