## Answer Report 1
| Microsoft Excel 16.0 Answer Report | Unnamed: 1 | Unnamed: 2 | Unnamed: 3 | Unnamed: 4 | Unnamed: 5 | Unnamed: 6 |
| --- | --- | --- | --- | --- | --- | --- |
| Worksheet: [ch5\_P1computers\_solution new.xlsx]LP Model | NaN | NaN | NaN | NaN | NaN | NaN |
| Report Created: 19/12/2024 10:38:15 | NaN | NaN | NaN | NaN | NaN | NaN |
| Result: Solver found a solution. All Constraints and optimality conditions are satisfied. | NaN | NaN | NaN | NaN | NaN | NaN |
| Solver Engine | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | Engine: Simplex LP | NaN | NaN | NaN | NaN | NaN |
| NaN | Solution Time: 0.032 Seconds. | NaN | NaN | NaN | NaN | NaN |
| NaN | Iterations: 8 Subproblems: 0 | NaN | NaN | NaN | NaN | NaN |
| Solver Options | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | Max Time Unlimited, Iterations Unlimited, Precision 0.000001, Use Automatic Scaling | NaN | NaN | NaN | NaN | NaN |
| NaN | Max Subproblems Unlimited, Max Integer Sols Unlimited, Integer Tolerance 1%, Assume NonNegative | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| Objective Cell (Min) | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | Cell | Name | Original Value | Final Value | NaN | NaN |
| NaN | $D$13 | Objective Function | 85000 | 85000 | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| Variable Cells | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | Cell | Name | Original Value | Final Value | Integer | NaN |
| NaN | $D$2 | x1 | 0 | 2000 | Contin | NaN |
| NaN | $D$4 | x2 | 0 | 1700 | Contin | NaN |
| NaN | $F$2 | x1 pos dev | 0 | 0 | Contin | NaN |
| NaN | $G$2 | x1 neg dev | 0 | 0 | Contin | NaN |
| NaN | $F$4 | x2 pos dev | 0 | 0 | Contin | NaN |
| NaN | $G$4 | x2 neg dev | 0 | 0 | Contin | NaN |
| NaN | $F$6 | Total production pos dev | 1700 | 1700 | Contin | NaN |
| NaN | $G$6 | Total production neg dev | 0 | 0 | Contin | NaN |
| NaN | $F$8 | Profit pos dev | 750000 | 750000 | Contin | NaN |
| NaN | $G$8 | Profit neg dev | 0 | 0 | Contin | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| Constraints | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | Cell | Name | Cell Value | Formula | Status | Slack |
| NaN | $H$2 | x1 LHV | 2000 | $H$2=$I$2 | Binding | 0 |
| NaN | $H$3 | LHV | 0 | $H$3=$I$3 | Binding | 0 |
| NaN | $H$4 | x2 LHV | 1700 | $H$4=$I$4 | Binding | 0 |
| NaN | $H$5 | LHV | 0 | $H$5=$I$5 | Binding | 0 |
| NaN | $H$6 | Total production LHV | 2000 | $H$6=$I$6 | Binding | 0 |
| NaN | $H$7 | LHV | 0 | $H$7=$I$7 | Binding | 0 |
| NaN | $H$8 | Profit LHV | 960000 | $H$8=$I$8 | Binding | 0 |
| NaN | $D$2 | x1 | 2000 | $D$2>=1000 | Not Binding | 1000 |
| NaN | $D$4 | x2 | 1700 | $D$4>=800 | Not Binding | 900 |

## Sensitivity Report 1
| Microsoft Excel 16.0 Sensitivity Report | Unnamed: 1 | Unnamed: 2 | Unnamed: 3 | Unnamed: 4 | Unnamed: 5 | Unnamed: 6 | Unnamed: 7 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Worksheet: [ch5\_P1computers\_solution new.xlsx]LP Model | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| Report Created: 19/12/2024 10:38:15 | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| Variable Cells | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | Final | Reduced | Objective | Allowable | Allowable |
| NaN | Cell | Name | Value | Cost | Coefficient | Increase | Decrease |
| NaN | $D$2 | x1 | 2000 | 0 | 0 | 450 | 50 |
| NaN | $D$4 | x2 | 1700 | 0 | 0 | 450 | 50 |
| NaN | $F$2 | x1 pos dev | 0 | 50 | 0 | 1000000000000000019884624838656 | 50 |
| NaN | $G$2 | x1 neg dev | 0 | 450 | 500 | 1000000000000000019884624838656 | 450 |
| NaN | $F$4 | x2 pos dev | 0 | 50 | 0 | 1000000000000000019884624838656 | 50 |
| NaN | $G$4 | x2 neg dev | 0 | 450 | 500 | 1000000000000000019884624838656 | 450 |
| NaN | $F$6 | Total production pos dev | 1700 | 0 | 50 | 450 | 50 |
| NaN | $G$6 | Total production neg dev | 0 | 150 | 100 | 1000000000000000019884624838656 | 150 |
| NaN | $F$8 | Profit pos dev | 750000 | 0 | 0 | 0.75 | 0.083333 |
| NaN | $G$8 | Profit neg dev | 0 | 10 | 10 | 1000000000000000019884624838656 | 10 |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| Constraints | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | Final | Shadow | Constraint | Allowable | Allowable |
| NaN | Cell | Name | Value | Price | R.H. Side | Increase | Decrease |
| NaN | $H$2 | x1 LHV | 2000 | 50 | 2000 | 1000000000000000019884624838656 | 1000 |
| NaN | $H$3 | LHV | 0 | 0 | 0 | 0 | 1000000000000000019884624838656 |
| NaN | $H$4 | x2 LHV | 1700 | 50 | 1700 | 1000000000000000019884624838656 | 900 |
| NaN | $H$5 | LHV | 0 | 0 | 0 | 0 | 1000000000000000019884624838656 |
| NaN | $H$6 | Total production LHV | 2000 | -50 | 2000 | 1700 | 1000000000000000019884624838656 |
| NaN | $H$7 | LHV | 0 | 0 | 0 | 0 | 1000000000000000019884624838656 |
| NaN | $H$8 | Profit LHV | 960000 | 0 | 960000 | 750000 | 1000000000000000019884624838656 |

## Limits Report 1
| Microsoft Excel 16.0 Limits Report | Unnamed: 1 | Unnamed: 2 | Unnamed: 3 | Unnamed: 4 | Unnamed: 5 | Unnamed: 6 | Unnamed: 7 | Unnamed: 8 | Unnamed: 9 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Worksheet: [ch5\_P1computers\_solution new.xlsx]LP Model | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| Report Created: 19/12/2024 10:38:16 | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | Objective | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | Cell | Name | Value | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | $D$13 | Objective Function | 85000 | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | Variable | NaN | NaN | Lower | Objective | NaN | Upper | Objective |
| NaN | Cell | Name | Value | NaN | Limit | Result | NaN | Limit | Result |
| NaN | $D$2 | x1 | 2000 | NaN | 2000.0 | 85000 | NaN | 2000.0 | 85000 |
| NaN | $D$4 | x2 | 1700 | NaN | 1700 | 85000 | NaN | 1700 | 85000 |
| NaN | $F$2 | x1 pos dev | 0 | NaN | 0 | 85000 | NaN | 0 | 85000 |
| NaN | $G$2 | x1 neg dev | 0 | NaN | 0 | 85000 | NaN | 0 | 85000 |
| NaN | $F$4 | x2 pos dev | 0 | NaN | 0 | 85000 | NaN | 0 | 85000 |
| NaN | $G$4 | x2 neg dev | 0 | NaN | 0 | 85000 | NaN | 0 | 85000 |
| NaN | $F$6 | Total production pos dev | 1700 | NaN | 1700 | 85000 | NaN | 1700 | 85000 |
| NaN | $G$6 | Total production neg dev | 0 | NaN | 0 | 85000 | NaN | 0 | 85000 |
| NaN | $F$8 | Profit pos dev | 750000 | NaN | 750000 | 85000 | NaN | 750000 | 85000 |
| NaN | $G$8 | Profit neg dev | 0 | NaN | 0 | 85000 | NaN | 0 | 85000 |

## LP Model
| Unnamed: 0 | Unnamed: 1 | Unnamed: 2 | Unnamed: 3 | net Profit | pos dev | neg dev | LHV | RHV | Demand |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| NaN | Laptops | x1 | 2000.0 | 600.0 | 0.0 | 0.0 | 2000.0 | 2000.0 | 1000.0 |
| NaN | NaN | NaN | NaN | NaN | 0.0 | 500.0 | 0.0 | 0.0 | NaN |
| NaN | Desktops | x2 | 1700.0 | 300.0 | 0.0 | 0.0 | 1700.0 | 1700.0 | 800.0 |
| NaN | NaN | NaN | NaN | NaN | 0.0 | 500.0 | 0.0 | 0.0 | NaN |
| NaN | Total production | NaN | 3700.0 | NaN | 1700.0 | 0.0 | 2000.0 | 2000.0 | NaN |
| NaN | NaN | NaN | NaN | NaN | 50.0 | 100.0 | 0.0 | 0.0 | NaN |
| NaN | Profit | NaN | 1710000.0 | NaN | 750000.0 | 0.0 | 960000.0 | 960000.0 | NaN |
| NaN | Production Limit | x1 | 2000.0 | NaN | 0.0 | 10.0 | NaN | NaN | NaN |
| NaN | NaN | x2 | 1700.0 | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN | NaN |
| NaN | Objective Function | NaN | 85000.0 | NaN | NaN | NaN | NaN | NaN | NaN |

## Sheet2
|
|  |

## Sheet3
|
|  |