## Preparation tasks (done before the lab at home)

1. Write characteristic equations and complete truth tables for D, JK, T flip-flops where `q(n)` represents main output value before the clock edge and `q(n+1)` represents output value after the clock edge.

   ![Characteristic equations](images/eq_flip_flops.png)
   <!--
   https://editor.codecogs.com/
   \begin{align*}
       q_{n+1}^D =&~D \\
       q_{n+1}^{JK} =&  ![jk]images/jk.png)
       q_{n+1}^T =&  ![t](images/t.png)
   \end{align*}
   -->

![rising](images/D-JK-T.png)

   **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | `q(n+1)` has the same level as `d` |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | `q(n+1)` has the same level as `d` |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | jeste netusim |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1/0 | jeste netusim |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 1 | 1 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | 0 | reset |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | 0 | reset |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 0 | 1 | set |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | 1 | set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | 1 | toggle |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | 0 | toggle |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1| not change |
   | ![rising](images/eq_uparrow.png) | 1 | 0| 1| invert (toggle) |
   | ![rising](images/eq_uparrow.png) | 1 | 1| 0| invert (toggle) |

<a name="part1"></a>
