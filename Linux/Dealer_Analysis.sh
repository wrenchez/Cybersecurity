#!/bin/bash
awk '{print $1,$2,$5,$6}' 0310_Dealer_schedule | grep 5 | grep AM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0310_Dealer_schedule | grep 8 | grep AM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0310_Dealer_schedule | grep 2 | grep PM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0310_Dealer_schedule | grep 8 | grep PM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0310_Dealer_schedule | grep 11 | grep PM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0312_Dealer_schedule | grep 5 | grep AM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0312_Dealer_schedule | grep 8 | grep AM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0312_Dealer_schedule | grep 2 | grep PM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0312_Dealer_schedule | grep 8 | grep PM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0312_Dealer_schedule | grep 11 | grep PM >> Dealers_working_during_losses
awk '{print $1,$2,$5,$6}' 0315_Dealer_schedule | grep 5 | grep AM >> Dealers_working_during_losses
                      