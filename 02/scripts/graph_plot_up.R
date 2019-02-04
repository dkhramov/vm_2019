library(DiagrammeR)

grViz("
      digraph mygraph {
        rankdir=BT;
        node [shape=box];
        a0 [label='Интерпретация результатов'];
        a1 -> a0;
        a1 [label='Валидация'];
        b -> a1;
        b [label='Калибровка'];
        c -> b;
        c [label='Верификация'];
        d -> c;
        d [label='Математическая модель'];
      }
      ")
