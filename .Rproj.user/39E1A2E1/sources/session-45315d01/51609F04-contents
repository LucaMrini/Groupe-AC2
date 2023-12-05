---
title: "Factors influencing the performance of football players - Analysis in a key position"
author: "Nedim Mujcic,Deborah-Awuni Maggini,Luca Marini"
date: "19 November, 2023"
output: html_document
keep-md: true
---





# 1 Introduction

::: {.cell}

:::

## 1.1 Overview and Motivation

<font size="3">

This is a project analyzing the factors influencing the performance of football players in a key position. Here's how it all began:

The choice of sport, and football in particular, was a natural one. With football being the best-known and most practiced sport, it was not surprising that everyone in our group was at least a little interested in it. Moreover, one of our members has been passionate about the sport since childhood. Having played in clubs for over 10 years and watched a lot of matches every week, he thought it would be beneficial for a project of this scale to put his knowledge to good use in a subject that has always interested him thus combining passion with academic work: Data in the world of sport.

Nowadays, data has taken on an enormous importance in this sport, allowing some of the more economically modest teams to maintain a certain level by picking interesting players in lower leagues and, of course, at a lower cost. There are many examples of this: Toulouse FC in France and Brentford FC in England to name but a few. The fact that you can use statistics to compensate for a lack of resources is such an interesting subject. Another inspiration for our subject comes from outside football. The presence of data in sport has also enabled the world of cinema to bring out "Moneyball", starring Brad Pitt, showing how the Oakland Athletics baseball team managed to build a highly competitive team despite having more modest resources than the other big franchises, thanks to a method known as sabermetrics. The fact that we have a film that in some way demonstrates the process used to improve a team through statistics is a real plus, and has enabled us to ask ourselves the following question: what common characteristics do the best players in the striker's position have, for example? The existence of websites like "fantasy football leagues" or sports betting sites, in a way, necessitates having databases of various statistics related to player performance, such as the number of shots on target, successful passes, and so on. Therefore, it is an advantage because we have access to a plethora of different databases containing various statistics, which alleviates some of the burden of searching for a sufficiently large database for this project.

</font>

## 1.2 Project Objectives

<font size="3">

Working on player performance statistics, it is interesting to see which statistics are important for different positions and especially between different leagues. From experience, we can say that, for example, English football is much more physical than the German league. Does it necessarily mean that our striker needs to be over 1.90 meters tall and have a certain weight to score a lot of goals? Additionally, of course, each team plays with a different system and strategy. Nevertheless, could we extract meaningful statistics within a position that in some way show a need to excel in a specific statistic? These kinds of questions set our goals and also allow us to put ourselves in the shoes of a data analyst within a club, demonstrating the complexity of the work but, more importantly, the ability to study the process by which a player is recruited based on their statistics and whether there is a way to predict their individual success and, beyond that, their importance in the collective success of their team. We decided to focus on a key position (striker), and on the characteristics chosen to be 'limited' because, as an outsider, we obviously don't have all the possible factors influencing performance that a real data analyst would have, so this allows us to imagine an opening for future work due to the enormity of the resources in this area and it obviously shows the complexity of such a profession.

Thus, the objective would be to identify the most significant statistics for a key position, allowing us to visualize the crucial skills required to maximize a player's potential success during a transfer. The advantage would then be to find a way to predict this success.

</font>

## 1.3 Research questions

<font size="3">

On an individual performance level:

Among the top goal scorers in the top 5 leagues, what are the common factors and statistics that are significant, and how it evolves depending on the championship?

What are the main physical factors influencing the goals per short on target (90')?

What specific statistics consistently distinguish Ballon d'Or winners from other top players, and how have these trends evolved over the past decades?

On an economic level:

How different cultural and economic indicators, such as a footballer's nationality, his country's GDP or his club revenue influence his individual performance and the overall performance of his team?

</font>

# 2 Data

::: {.cell layout-align="center"}

:::

# 2.1 Raw datasets

## 2.1.1 Kaggle : football player stats 2021-2022

Ex : This is the dataset where we get the majority of our information for our analysis, it's the basis of most of the other database and more importantly *data of players clean* : It contains the majority of useful data targeting the skill of players.

As if, some of the names of the players aren't recognized but we managed to fix it (more details on the data wrangling) .

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Rk </td>
   <td style="text-align:left;color: black !important;"> Rank </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Player </td>
   <td style="text-align:left;color: black !important;"> Player name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Nation </td>
   <td style="text-align:left;color: black !important;"> Player nation </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Pos </td>
   <td style="text-align:left;color: black !important;"> Position </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Squad </td>
   <td style="text-align:left;color: black !important;"> Squad’s name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Comp </td>
   <td style="text-align:left;color: black !important;"> League that squad occupies </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Age </td>
   <td style="text-align:left;color: black !important;"> Player age </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Born </td>
   <td style="text-align:left;color: black !important;"> Year of birth </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> MP </td>
   <td style="text-align:left;color: black !important;"> Matches played </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Starts </td>
   <td style="text-align:left;color: black !important;"> Matches started </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Min </td>
   <td style="text-align:left;color: black !important;"> Minutes played </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 90s </td>
   <td style="text-align:left;color: black !important;"> Minutes played divided by 90 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Goals </td>
   <td style="text-align:left;color: black !important;"> Goals scored or allowed </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Shots </td>
   <td style="text-align:left;color: black !important;"> Shots total (Does not include penalty kicks) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SoT </td>
   <td style="text-align:left;color: black !important;"> Shots on target (Does not include penalty kicks) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SoT% </td>
   <td style="text-align:left;color: black !important;"> Shots on target percentage (Does not include penalty kicks) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> G/Sh </td>
   <td style="text-align:left;color: black !important;"> Goals per shot </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> G/SoT </td>
   <td style="text-align:left;color: black !important;"> Goals per shot on target (Does not include penalty kicks) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ShoDist </td>
   <td style="text-align:left;color: black !important;"> Average distance, in yards, from goal of all shots taken (Does not include penalty kicks) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ShoFK </td>
   <td style="text-align:left;color: black !important;"> Shots from free kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ShoPK </td>
   <td style="text-align:left;color: black !important;"> Penalty kicks made </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PKatt </td>
   <td style="text-align:left;color: black !important;"> Penalty kicks attempted </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasTotCmp </td>
   <td style="text-align:left;color: black !important;"> Passes completed </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasTotAtt </td>
   <td style="text-align:left;color: black !important;"> Passes attempted </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasTotCmp% </td>
   <td style="text-align:left;color: black !important;"> Pass completion percentage </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasTotDist </td>
   <td style="text-align:left;color: black !important;"> Total distance, in yards, that completed passes have traveled in any direction </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasTotPrgDist </td>
   <td style="text-align:left;color: black !important;"> Total distance, in yards, that completed passes have traveled towards the opponent goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasShoCmp </td>
   <td style="text-align:left;color: black !important;"> Passes completed (Passes between 5 and 15 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasShoAtt </td>
   <td style="text-align:left;color: black !important;"> Passes attempted (Passes between 5 and 15 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasShoCmp% </td>
   <td style="text-align:left;color: black !important;"> Pass completion percentage (Passes between 5 and 15 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasMedCmp </td>
   <td style="text-align:left;color: black !important;"> Passes completed (Passes between 15 and 30 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasMedAtt </td>
   <td style="text-align:left;color: black !important;"> Passes attempted (Passes between 15 and 30 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasMedCmp% </td>
   <td style="text-align:left;color: black !important;"> Pass completion percentage (Passes between 15 and 30 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasLonCmp </td>
   <td style="text-align:left;color: black !important;"> Passes completed (Passes longer than 30 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasLonAtt </td>
   <td style="text-align:left;color: black !important;"> Passes attempted (Passes longer than 30 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasLonCmp% </td>
   <td style="text-align:left;color: black !important;"> Pass completion percentage (Passes longer than 30 yards) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Assists </td>
   <td style="text-align:left;color: black !important;"> Assists </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasAss </td>
   <td style="text-align:left;color: black !important;"> Passes that directly lead to a shot (assisted shots) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Pas3rd </td>
   <td style="text-align:left;color: black !important;"> Completed passes that enter the 1/3 of the pitch closest to the goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PPA </td>
   <td style="text-align:left;color: black !important;"> Completed passes into the 18-yard box </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CrsPA </td>
   <td style="text-align:left;color: black !important;"> Completed crosses into the 18-yard box </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasProg </td>
   <td style="text-align:left;color: black !important;"> Completed passes that move the ball towards the opponent goal at least 10 yards from its furthest point in the last six passes, or any completed pass into the penalty area </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasAtt </td>
   <td style="text-align:left;color: black !important;"> Passes attempted </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasLive </td>
   <td style="text-align:left;color: black !important;"> Live-ball passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasDead </td>
   <td style="text-align:left;color: black !important;"> Dead-ball passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasFK </td>
   <td style="text-align:left;color: black !important;"> Passes attempted from free kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TB </td>
   <td style="text-align:left;color: black !important;"> Completed pass sent between back defenders into open space </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasPress </td>
   <td style="text-align:left;color: black !important;"> Passes made while under pressure from opponent </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Sw </td>
   <td style="text-align:left;color: black !important;"> Passes that travel more than 40 yards of the width of the pitch </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasCrs </td>
   <td style="text-align:left;color: black !important;"> Crosses </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CK </td>
   <td style="text-align:left;color: black !important;"> Corner kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CkIn </td>
   <td style="text-align:left;color: black !important;"> Inswinging corner kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CkOut </td>
   <td style="text-align:left;color: black !important;"> Outswinging corner kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CkStr </td>
   <td style="text-align:left;color: black !important;"> Straight corner kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasGround </td>
   <td style="text-align:left;color: black !important;"> Ground passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasLow </td>
   <td style="text-align:left;color: black !important;"> Passes that leave the ground, but stay below shoulder-level </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasHigh </td>
   <td style="text-align:left;color: black !important;"> Passes that are above shoulder-level at the peak height </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PaswLeft </td>
   <td style="text-align:left;color: black !important;"> Passes attempted using left foot </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PaswRight </td>
   <td style="text-align:left;color: black !important;"> Passes attempted using right foot </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PaswHead </td>
   <td style="text-align:left;color: black !important;"> Passes attempted using head </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TI </td>
   <td style="text-align:left;color: black !important;"> Throw-Ins taken </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PaswOther </td>
   <td style="text-align:left;color: black !important;"> Passes attempted using body parts other than the player head or feet </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasCmp </td>
   <td style="text-align:left;color: black !important;"> Passes completed </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasOff </td>
   <td style="text-align:left;color: black !important;"> Offsides </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasOut </td>
   <td style="text-align:left;color: black !important;"> Out of bounds </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasInt </td>
   <td style="text-align:left;color: black !important;"> Intercepted </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasBlocks </td>
   <td style="text-align:left;color: black !important;"> Blocked by the opponent who was standing in its path </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SCA </td>
   <td style="text-align:left;color: black !important;"> Shot-creating actions </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ScaPassLive </td>
   <td style="text-align:left;color: black !important;"> Completed live-ball passes that lead to a shot attempt </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ScaPassDead </td>
   <td style="text-align:left;color: black !important;"> Completed dead-ball passes that lead to a shot attempt </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ScaDrib </td>
   <td style="text-align:left;color: black !important;"> Successful dribbles that lead to a shot attempt </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ScaSh </td>
   <td style="text-align:left;color: black !important;"> Shots that lead to another shot attempt </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ScaFld </td>
   <td style="text-align:left;color: black !important;"> Fouls drawn that lead to a shot attempt </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ScaDef </td>
   <td style="text-align:left;color: black !important;"> Defensive actions that lead to a shot attempt </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GCA </td>
   <td style="text-align:left;color: black !important;"> Goal-creating actions </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GcaPassLive </td>
   <td style="text-align:left;color: black !important;"> Completed live-ball passes that lead to a goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GcaPassDead </td>
   <td style="text-align:left;color: black !important;"> Completed dead-ball passes that lead to a goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GcaDrib </td>
   <td style="text-align:left;color: black !important;"> Successful dribbles that lead to a goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GcaSh </td>
   <td style="text-align:left;color: black !important;"> Shots that lead to another goal-scoring shot </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GcaFld </td>
   <td style="text-align:left;color: black !important;"> Fouls drawn that lead to a goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GcaDef </td>
   <td style="text-align:left;color: black !important;"> Defensive actions that lead to a goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Tkl </td>
   <td style="text-align:left;color: black !important;"> Number of players tackled </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklWon </td>
   <td style="text-align:left;color: black !important;"> Tackles in which the tackler team won possession of the ball </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklDef3rd </td>
   <td style="text-align:left;color: black !important;"> Tackles in defensive 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklMid3rd </td>
   <td style="text-align:left;color: black !important;"> Tackles in middle 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklAtt3rd </td>
   <td style="text-align:left;color: black !important;"> Tackles in attacking 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklDri </td>
   <td style="text-align:left;color: black !important;"> Number of dribblers tackled </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TlDriAtt </td>
   <td style="text-align:left;color: black !important;"> Number of times dribbled past plus number of tackles </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklDri% </td>
   <td style="text-align:left;color: black !important;"> Percentage of dribblers tackled </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklDriPast </td>
   <td style="text-align:left;color: black !important;"> Number of times dribbled past by an opposing player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Press </td>
   <td style="text-align:left;color: black !important;"> Number of times applying pressure to opposing player who is receiving, carrying or releasing the ball </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PresSucc </td>
   <td style="text-align:left;color: black !important;"> Number of times the squad gained possession within five seconds of applying pressure </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Press% </td>
   <td style="text-align:left;color: black !important;"> Percentage of time the squad gained possession within five seconds of applying pressure </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PresDef3rd </td>
   <td style="text-align:left;color: black !important;"> Number of times applying pressure to opposing player who is receiving, carrying or releasing the ball, in the defensive 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PresMid3rd </td>
   <td style="text-align:left;color: black !important;"> Number of times applying pressure to opposing player who is receiving, carrying or releasing the ball, in the middle 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PresAtt3rd </td>
   <td style="text-align:left;color: black !important;"> Number of times applying pressure to opposing player who is receiving, carrying or releasing the ball, in the attacking 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Blocks </td>
   <td style="text-align:left;color: black !important;"> Number of times blocking the ball by standing in its path </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> BlkSh </td>
   <td style="text-align:left;color: black !important;"> Number of times blocking a shot by standing in its path </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> BlkShSv </td>
   <td style="text-align:left;color: black !important;"> Number of times blocking a shot that was on target, by standing in its path </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> BlkPass </td>
   <td style="text-align:left;color: black !important;"> Number of times blocking a pass by standing in its path </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Int </td>
   <td style="text-align:left;color: black !important;"> Interceptions </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Tkl+Int </td>
   <td style="text-align:left;color: black !important;"> Number of players tackled plus number of interceptions </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Clr </td>
   <td style="text-align:left;color: black !important;"> Clearances </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Err </td>
   <td style="text-align:left;color: black !important;"> Mistakes leading to an opponent shot </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Touches </td>
   <td style="text-align:left;color: black !important;"> Number of times a player touched the ball. Note: Receiving a pass, then dribbling, then sending a pass counts as one touch </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TouDefPen </td>
   <td style="text-align:left;color: black !important;"> Touches in defensive penalty area </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TouDef3rd </td>
   <td style="text-align:left;color: black !important;"> Touches in defensive 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TouMid3rd </td>
   <td style="text-align:left;color: black !important;"> Touches in middle 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TouAtt3rd </td>
   <td style="text-align:left;color: black !important;"> Touches in attacking 1/3 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TouAttPen </td>
   <td style="text-align:left;color: black !important;"> Touches in attacking penalty area </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TouLive </td>
   <td style="text-align:left;color: black !important;"> Live-ball touches. Does not include corner kicks, free kicks, throw-ins, kick-offs, goal kicks or penalty kicks. </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> DriSucc </td>
   <td style="text-align:left;color: black !important;"> Dribbles completed successfully </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> DriAtt </td>
   <td style="text-align:left;color: black !important;"> Dribbles attempted </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> DriSucc% </td>
   <td style="text-align:left;color: black !important;"> Percentage of dribbles completed successfully </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> DriPast </td>
   <td style="text-align:left;color: black !important;"> Number of players dribbled past </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> DriMegs </td>
   <td style="text-align:left;color: black !important;"> Number of times a player dribbled the ball through an opposing player legs </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Carries </td>
   <td style="text-align:left;color: black !important;"> Number of times the player controlled the ball with their feet </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CarTotDist </td>
   <td style="text-align:left;color: black !important;"> Total distance, in yards, a player moved the ball while controlling it with their feet, in any direction </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CarPrgDist </td>
   <td style="text-align:left;color: black !important;"> Total distance, in yards, a player moved the ball while controlling it with their feet towards the opponent goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CarProg </td>
   <td style="text-align:left;color: black !important;"> Carries that move the ball towards the opponent goal at least 5 yards, or any carry into the penalty area </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Car3rd </td>
   <td style="text-align:left;color: black !important;"> Carries that enter the 1/3 of the pitch closest to the goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CPA </td>
   <td style="text-align:left;color: black !important;"> Carries into the 18-yard box </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CarMis </td>
   <td style="text-align:left;color: black !important;"> Number of times a player failed when attempting to gain control of a ball </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CarDis </td>
   <td style="text-align:left;color: black !important;"> Number of times a player loses control of the ball after being tackled by an opposing player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> RecTarg </td>
   <td style="text-align:left;color: black !important;"> Number of times a player was the target of an attempted pass </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Rec </td>
   <td style="text-align:left;color: black !important;"> Number of times a player successfully received a pass </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Rec% </td>
   <td style="text-align:left;color: black !important;"> Percentage of time a player successfully received a pass </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> RecProg </td>
   <td style="text-align:left;color: black !important;"> Completed passes that move the ball towards the opponent goal at least 10 yards from its furthest point in the last six passes, or any completed pass into the penalty area </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CrdY </td>
   <td style="text-align:left;color: black !important;"> Yellow cards </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CrdR </td>
   <td style="text-align:left;color: black !important;"> Red cards </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2CrdY </td>
   <td style="text-align:left;color: black !important;"> Second yellow card </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Fls </td>
   <td style="text-align:left;color: black !important;"> Fouls committed </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Fld </td>
   <td style="text-align:left;color: black !important;"> Fouls drawn </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Off </td>
   <td style="text-align:left;color: black !important;"> Offsides </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Crs </td>
   <td style="text-align:left;color: black !important;"> Crosses </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TklW </td>
   <td style="text-align:left;color: black !important;"> Tackles in which the tackler team won possession of the ball </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PKwon </td>
   <td style="text-align:left;color: black !important;"> Penalty kicks won </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PKcon </td>
   <td style="text-align:left;color: black !important;"> Penalty kicks conceded </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> OG </td>
   <td style="text-align:left;color: black !important;"> Own goals </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Recov </td>
   <td style="text-align:left;color: black !important;"> Number of loose balls recovered </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> AerWon </td>
   <td style="text-align:left;color: black !important;"> Aerials won </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> AerLost </td>
   <td style="text-align:left;color: black !important;"> Aerials lost </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> AerWon% </td>
   <td style="text-align:left;color: black !important;"> Percentage of aerials won </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.kaggle.com/datasets/vivovinco/20212022-football-player-stats>

## 2.1.2 Fifa.csv

Ex : Used to complete information concerning height, weight of *data of players clean* . The video game Fifa contains reliable and up to date data concerning stats or information concerning football players.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> id </td>
   <td style="text-align:left;color: black !important;"> Unique identifier for a player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Fullname </td>
   <td style="text-align:left;color: black !important;"> Full name of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> current_rating </td>
   <td style="text-align:left;color: black !important;"> Players current skill rating or performance level </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> potential_rating </td>
   <td style="text-align:left;color: black !important;"> Expected potential skill level or rating a player can achieve </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> height </td>
   <td style="text-align:left;color: black !important;"> Player's height </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> weight </td>
   <td style="text-align:left;color: black !important;"> Player's weight </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> preferred_foot </td>
   <td style="text-align:left;color: black !important;"> Player's preferred foot for kicking (left or right) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> birth_date </td>
   <td style="text-align:left;color: black !important;"> Player's date of birth </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> preferred_positions </td>
   <td style="text-align:left;color: black !important;"> Positions on the field the player prefers to play </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> work_rate </td>
   <td style="text-align:left;color: black !important;"> Player's work rate or level of effort during matches </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> weak_foot </td>
   <td style="text-align:left;color: black !important;"> Player's weaker foot rating or ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> skill_moves </td>
   <td style="text-align:left;color: black !important;"> Player's skill move rating or ability to perform technical moves </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> value </td>
   <td style="text-align:left;color: black !important;"> Player's estimated market value </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> wage </td>
   <td style="text-align:left;color: black !important;"> Player's salary or wage </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ball_control </td>
   <td style="text-align:left;color: black !important;"> Player's skill in controlling the ball </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> dribbling </td>
   <td style="text-align:left;color: black !important;"> Player's dribbling ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> marking </td>
   <td style="text-align:left;color: black !important;"> Player's defensive marking ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> tackling </td>
   <td style="text-align:left;color: black !important;"> Player's ability to perform tackles </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> aggression </td>
   <td style="text-align:left;color: black !important;"> Player's level of aggression on the field </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> composure </td>
   <td style="text-align:left;color: black !important;"> Player's composure under pressure </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> reaction </td>
   <td style="text-align:left;color: black !important;"> Player's reaction time </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> crossing </td>
   <td style="text-align:left;color: black !important;"> Player's ability to cross the ball into the box </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> short_pass </td>
   <td style="text-align:left;color: black !important;"> Player's accuracy in short passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> long_pass </td>
   <td style="text-align:left;color: black !important;"> Player's accuracy in long passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> acceleration </td>
   <td style="text-align:left;color: black !important;"> Player's acceleration </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> stamina </td>
   <td style="text-align:left;color: black !important;"> Player's stamina or endurance </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> strength </td>
   <td style="text-align:left;color: black !important;"> Player's physical strength </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> spring_speed </td>
   <td style="text-align:left;color: black !important;"> Player's sprinting speed </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> heading </td>
   <td style="text-align:left;color: black !important;"> Player's heading ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> shot_power </td>
   <td style="text-align:left;color: black !important;"> Player's power in shooting </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> finishing </td>
   <td style="text-align:left;color: black !important;"> Player's ability to finish goal-scoring opportunities </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> long_shots </td>
   <td style="text-align:left;color: black !important;"> Player's ability to take long-range shots </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> FK_Acc. </td>
   <td style="text-align:left;color: black !important;"> Player's accuracy in free kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> reflexes </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's reflexes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> handling </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's handling ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> gk_positioning </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's positioning on the field </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> gk_diving </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's diving ability </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.kaggle.com/datasets/daguizer/fifa-2021-to-2005-complete-player-attributes>

## 2.1.3 **Ballon D'or-Golden Ball Winners**

Ex : From this data set we extracted most of the information concerning the clean database *Ballon d'or winners clean*

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Year </td>
   <td style="text-align:left;color: black !important;"> Year of assignment </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Rank </td>
   <td style="text-align:left;color: black !important;"> winner,second,third </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Player </td>
   <td style="text-align:left;color: black !important;"> Player first and last Name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Country </td>
   <td style="text-align:left;color: black !important;"> Country of birth/acquired citizenship </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Team </td>
   <td style="text-align:left;color: black !important;"> Football team at the time the prize was assigned </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Points </td>
   <td style="text-align:left;color: black !important;"> Score obtained </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Source </td>
   <td style="text-align:left;color: black !important;"> Source of the data </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.kaggle.com/datasets/marcellopaolo/ballon-dor-golden-ball-winners?select=BallonDor-GoldenBall_Winners_v2.csv>

## 2.1.4 **FIFA Players & Stats**

Ex : Used to complete information concerning height, weight of *data of players clean* that weren't on the *Fifa.csv* database.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> ID </td>
   <td style="text-align:left;color: black !important;"> Unique identifier for the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Name </td>
   <td style="text-align:left;color: black !important;"> Player's name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Natinality </td>
   <td style="text-align:left;color: black !important;"> Player's nationality </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Overal </td>
   <td style="text-align:left;color: black !important;"> Player's overall skill rating </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Potential </td>
   <td style="text-align:left;color: black !important;"> Player's potential skill rating </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Height </td>
   <td style="text-align:left;color: black !important;"> Player's height </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Weight </td>
   <td style="text-align:left;color: black !important;"> Player's weight </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PreferredFoot </td>
   <td style="text-align:left;color: black !important;"> Player's preferred foot for kicking (left or right) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> BirthDate </td>
   <td style="text-align:left;color: black !important;"> Player's date of birth </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Age </td>
   <td style="text-align:left;color: black !important;"> Player's current age </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PreferredPositions </td>
   <td style="text-align:left;color: black !important;"> Positions on the field preferred by the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PlayerWorkRate </td>
   <td style="text-align:left;color: black !important;"> Player's work rate or effort during matches </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> WeakFoot </td>
   <td style="text-align:left;color: black !important;"> Player's weaker foot rating or ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SkillMoves </td>
   <td style="text-align:left;color: black !important;"> Player's skill move rating or ability to perform technical moves </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Value </td>
   <td style="text-align:left;color: black !important;"> Player's estimated market value </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Wage </td>
   <td style="text-align:left;color: black !important;"> Player's salary or wage </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Nation </td>
   <td style="text-align:left;color: black !important;"> Player's nation </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Nation_Position </td>
   <td style="text-align:left;color: black !important;"> Player's position within the national team </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Nation_KitNumber </td>
   <td style="text-align:left;color: black !important;"> Player's kit number in the national team </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Club </td>
   <td style="text-align:left;color: black !important;"> Player's club </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Club_Position </td>
   <td style="text-align:left;color: black !important;"> Player's position within the club team </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Club_KitNumber </td>
   <td style="text-align:left;color: black !important;"> Player's kit number in the club team </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Club_JoinedClub </td>
   <td style="text-align:left;color: black !important;"> Date when the player joined the club </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Club_ContractLength </td>
   <td style="text-align:left;color: black !important;"> Length of the player's contract with the club </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> BallControl </td>
   <td style="text-align:left;color: black !important;"> Player's skill in controlling the ball </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Dribbling </td>
   <td style="text-align:left;color: black !important;"> Player's dribbling ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Marking </td>
   <td style="text-align:left;color: black !important;"> Player's marking ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SlideTackle </td>
   <td style="text-align:left;color: black !important;"> Player's sliding tackle ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> StandTackle </td>
   <td style="text-align:left;color: black !important;"> Player's standing tackle ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Aggression </td>
   <td style="text-align:left;color: black !important;"> Player's level of aggression on the field </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Reactions </td>
   <td style="text-align:left;color: black !important;"> Player's reaction time </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> AttPosition </td>
   <td style="text-align:left;color: black !important;"> Player's positioning for attacks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Interceptions </td>
   <td style="text-align:left;color: black !important;"> Player's ability to intercept passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Vision </td>
   <td style="text-align:left;color: black !important;"> Player's vision on the field </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Composure </td>
   <td style="text-align:left;color: black !important;"> Player's composure under pressure </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Crossing </td>
   <td style="text-align:left;color: black !important;"> Player's ability to cross the ball into the box </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ShortPass </td>
   <td style="text-align:left;color: black !important;"> Player's accuracy in short passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> LongPass </td>
   <td style="text-align:left;color: black !important;"> Player's accuracy in long passes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Acceleration </td>
   <td style="text-align:left;color: black !important;"> Player's acceleration </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Stamina </td>
   <td style="text-align:left;color: black !important;"> Player's stamina or endurance </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Strength </td>
   <td style="text-align:left;color: black !important;"> Player's physical strength </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Balance </td>
   <td style="text-align:left;color: black !important;"> Player's balance on the field </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SprintSpeed </td>
   <td style="text-align:left;color: black !important;"> Player's sprinting speed </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Agility </td>
   <td style="text-align:left;color: black !important;"> Player's agility </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Jumping </td>
   <td style="text-align:left;color: black !important;"> Player's jumping ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Heading </td>
   <td style="text-align:left;color: black !important;"> Player's heading ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ShotPower </td>
   <td style="text-align:left;color: black !important;"> Player's power in shooting </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Finishing </td>
   <td style="text-align:left;color: black !important;"> Player's ability to finish goal-scoring opportunities </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> LongShots </td>
   <td style="text-align:left;color: black !important;"> Player's ability to take long-range shots </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Curve </td>
   <td style="text-align:left;color: black !important;"> Player's ability to curve the ball </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> FKAcc </td>
   <td style="text-align:left;color: black !important;"> Player's accuracy in free kicks </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Penalties </td>
   <td style="text-align:left;color: black !important;"> Player's penalty-taking ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Volleys </td>
   <td style="text-align:left;color: black !important;"> Player's ability to hit volleys </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GKPositioning </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's positioning on the field </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GKDiving </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's diving ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GKHandling </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's handling ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GKKicking </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's kicking ability </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GKReflexes </td>
   <td style="text-align:left;color: black !important;"> Goalkeeper's reflexes </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Traits </td>
   <td style="text-align:left;color: black !important;"> Special traits associated with the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Specialities </td>
   <td style="text-align:left;color: black !important;"> Special abilities or skills the player possesses </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.kaggle.com/datasets/justdhia/fifa-players?select=2021.csv>

## 2.1.5 **World Population Dataset**

Ex : This dataset contains the world population by country from 1960 until 2021 it will help us to analyze links between demography, gdp of a country and the skill of a forward player.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Country Name </td>
   <td style="text-align:left;color: black !important;"> Name of the country </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Country Code </td>
   <td style="text-align:left;color: black !important;"> Country Code </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1960 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1960 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1961 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1961 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1962 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1962 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1963 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1963 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1964 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1964 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1965 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1965 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1966 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1966 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1967 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1967 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1968 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1968 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1969 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1969 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1970 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1970 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1971 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1971 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1972 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1972 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1973 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1973 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1974 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1974 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1975 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1975 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1976 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1976 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1977 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1977 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1978 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1978 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1979 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1979 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1980 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1980 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1981 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1981 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1982 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1982 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1983 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1983 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1984 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1984 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1985 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1985 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1986 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1986 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1987 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1987 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1988 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1988 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1989 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1989 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1990 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1990 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1991 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1991 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1992 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1992 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1993 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1993 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1994 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1994 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1995 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1995 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1996 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1996 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1997 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1997 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1998 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1998 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1999 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 1999 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2000 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2000 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2001 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2001 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2002 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2002 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2003 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2003 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2004 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2004 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2005 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2005 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2006 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2006 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2007 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2007 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2008 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2008 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2009 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2009 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2010 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2010 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2011 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2011 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2012 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2012 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2013 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2013 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2014 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2014 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2015 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2015 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2016 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2016 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2017 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2017 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2018 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2018 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2019 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2019 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2020 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2020 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2021 </td>
   <td style="text-align:left;color: black !important;"> Population of Country in 2021 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.kaggle.com/datasets/ryanjt/world-population-2022>

## 2.1.6 **GDP By Country 1999 - 2022**

Ex : This is a dataset from Kaggle that contains the GDP by country for different countries it will be used to do analysis on the link of a nation's wealth and the skills of a player.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Country </td>
   <td style="text-align:left;color: black !important;"> Name of the country </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 1999 </td>
   <td style="text-align:left;color: black !important;"> Population in 1999 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2000 </td>
   <td style="text-align:left;color: black !important;"> Population in 2000 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2001 </td>
   <td style="text-align:left;color: black !important;"> Population in 2001 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2002 </td>
   <td style="text-align:left;color: black !important;"> Population in 2002 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2003 </td>
   <td style="text-align:left;color: black !important;"> Population in 2003 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2004 </td>
   <td style="text-align:left;color: black !important;"> Population in 2004 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2005 </td>
   <td style="text-align:left;color: black !important;"> Population in 2005 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2006 </td>
   <td style="text-align:left;color: black !important;"> Population in 2006 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2007 </td>
   <td style="text-align:left;color: black !important;"> Population in 2007 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2008 </td>
   <td style="text-align:left;color: black !important;"> Population in 2008 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2009 </td>
   <td style="text-align:left;color: black !important;"> Population in 2009 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2010 </td>
   <td style="text-align:left;color: black !important;"> Population in 2010 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2012 </td>
   <td style="text-align:left;color: black !important;"> Population in 2012 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2013 </td>
   <td style="text-align:left;color: black !important;"> Population in 2013 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2014 </td>
   <td style="text-align:left;color: black !important;"> Population in 2014 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2015 </td>
   <td style="text-align:left;color: black !important;"> Population in 2015 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2016 </td>
   <td style="text-align:left;color: black !important;"> Population in 2016 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2017 </td>
   <td style="text-align:left;color: black !important;"> Population in 2017 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2018 </td>
   <td style="text-align:left;color: black !important;"> Population in 2018 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2019 </td>
   <td style="text-align:left;color: black !important;"> Population in 2019 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2020 </td>
   <td style="text-align:left;color: black !important;"> Population in 2020 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2021 </td>
   <td style="text-align:left;color: black !important;"> Population in 2021 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2022 </td>
   <td style="text-align:left;color: black !important;"> Population in 2022 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.kaggle.com/code/alejopaullier/gdp-by-country-1999-2022>

## 2.1.7 **Revenue of the Big Five soccer leagues in Europe from 2012/13 to 2021/22, with a forecast to 2023/24, by league**

Ex : Dataset done from a webpage on statista that forecasts the revenue of the five biggest leagues from 2012 to 2022.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Date </td>
   <td style="text-align:left;color: black !important;"> Date </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Bundesliga </td>
   <td style="text-align:left;color: black !important;"> revenue Bundesliga </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> LaLiga </td>
   <td style="text-align:left;color: black !important;"> revenue La Liga </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SerieA </td>
   <td style="text-align:left;color: black !important;"> revenue Serie A </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Ligue1 </td>
   <td style="text-align:left;color: black !important;"> revenue Ligue 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Premierleague </td>
   <td style="text-align:left;color: black !important;"> revenue Premier league </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.statista.com/statistics/261218/big-five-european-soccer-leagues-revenue/>

## 2.1.8 : **Revenue from broadcasting rights of European soccer leagues from in 2019/20**

Ex : Dataset made from scratches from Statista to create our own db

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> country </td>
   <td style="text-align:left;color: black !important;"> country </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> revenue </td>
   <td style="text-align:left;color: black !important;"> revenue calculated in mio </td>
  </tr>
</tbody>
</table>

`````

:::
:::

Source : <https://www.statista.com/statistics/627306/broadcasting-big-five-european-football-league-revenues/>

# 2.2 Data wrangling and cleaning

## 2.2.1 Ballon d'or winners clean

Now, it's time to clean up the Ballon d'Or database. This was less difficult than the previous database, although it still required some work. The *`dplyr`* and *`readr`* libraries were used during this data wrangling exercise. First, we needed to filter our database to keep only the winners from the last 20 years. This choice was made to observe the evolution of 21st-century football. It's important to note that there was no Ballon d'Or awarded in 2020, hence its absence. To do this, nothing was more efficient than using a *`filter()`* function.

Next, we encountered a naming issue with a certain player. For some reason, Luka Modrić was listed as 'Croatia Luka Modric' so it was necessary to rename him using the *`mutate()`* function in conjunction with *`ifelse()`*.

Now, we could start adding new columns that would be useful for the project's analysis. We aimed to add the following columns: **Age, Height, Weight, Preferred Foot, and Preferred Positions**.

To achieve this, we needed other databases to join the missing columns. We chose FIFA05 and FIFA21 databases because the oldest winners are not present in the most modern game. To maximize our chances of having the necessary variables, we opted for two databases. To join two databases, we needed a common key. The **Player** column was the most suitable, so we aligned this name in the other databases using the *`rename()`* function. Having a common key allowed us to merge the databases using the *`left_join()`* function. However, this resulted in numerous unnecessary columns in our database. Using the *`select()`* function, we retained only the necessary columns. This process will be repeated while writing the code.

New challenges arose. For the sake of our analysis, we needed new columns. Firstly, an **Age** column. We now had the birth date and wanted the age at the time of winning. As some players won multiple times, they needed different ages for each success. Therefore, retrieving age from other databases wasn't feasible; we had to do it ourselves. We used the *`sub()`* function to extract the birth year and then, with *`mutate()`*`,` created the **Age** column by subtracting the birth year from the Ballon d'Or's year.

Next, to replace missing values in our columns, we used a combination of *\$* and *`ifelse(is.na())`* functions. *\$* was used to select the database and column we wanted to work on, while the latter function replaced missing values. Consequently, our columns were filled with values from the two external databases.

However, we encountered an issue with the player **Kaka**, who had missing values for some columns. As he was the only player with this problem, we manually created a *`Kaka_values <- c()`* containing the different characteristics and used this in an *`ifelse()`* function to replace the missing values.

Before finishing and selecting only the useful columns, we needed to standardize the **PreferredFoot** and **PreferredPositions** columns. **PreferredFoot** sometimes had values like *R* instead of *Right*, and **PreferredPositions** had '-' instead of '/'. The *`ifelse()`* and *`gsub()`* functions were instrumental in this process.

Now, the Ballon d'Or database is cleaned up with the columns we intend to use for the analysis ahead.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Year </td>
   <td style="text-align:left;color: black !important;"> Birthdate of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Player </td>
   <td style="text-align:left;color: black !important;"> Name of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Country </td>
   <td style="text-align:left;color: black !important;"> Country of origin of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Team </td>
   <td style="text-align:left;color: black !important;"> Team of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Age </td>
   <td style="text-align:left;color: black !important;"> Age of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Height </td>
   <td style="text-align:left;color: black !important;"> Height of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Weight </td>
   <td style="text-align:left;color: black !important;"> Weight of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PreferredFoot </td>
   <td style="text-align:left;color: black !important;"> Preferred foot of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PreferredPositions </td>
   <td style="text-align:left;color: black !important;"> Preferred posiiton of the player </td>
  </tr>
</tbody>
</table>

`````

:::
:::

## 2.2.2 Data of players clean

Cleaning up the database of player performances and statistics was a very complex task. Several types of problem arose, and we had to make choices and take initiatives for the rest of our analysis.

The *`dplyr`*`,` *readr, `stringr`, `tidyr` and `lubridate`* libraries were used during this data wrangling exercise.

Firstly, when we downloaded our database, a major problem appeared. As soon as a player or team name contained a special character such as an acute accent, the accent changed to **?** and we realized that we had an encoding problem. To overcome this problem, we tested different encoding, in particular *'UTF-8'*, and others *'ISO'*, but the problem didn't go away. In fact, some names ended up with the wrong accent. Nevertheless, we found that the *'ISO-8859-1'* encoding was the most suitable, leaving us with a problem with Slavic and ex-Yugoslav family names in particular. We therefore tried to create a list of players with the remaining encoding problem.

Understanding that special characters were indeed very special for these players, we took the initiative of manually renaming certain players such as *"Edin Džeko"*, using the *sub()* function, and then using the *gsub()* function, we replaced the last **?** with the letter **ć**, which was generally the letter most present in names with this problem. However, for some reason, the players *"Dušan Vlahović"* and *"Nikola Vlašić"* had spaces instead of the letter **"š"**, so we had to use another method to rename them. We used the *ifelse()* function, and as it wasn't possible to rename them using the basic written name, we had to use another common key: **Rk**.

It was important first to explain how we renamed our players and teams in the first place, as this was a major problem. However, before beginning the steps above, we first sorted the database a little. First of all, we had duplicate players because, as our database covers an entire season, it's quite normal to have transfers in mid-season, which explains the presence of duplicate players with different characteristics such as the club. The *`distinct()`* function allows us to remove duplicates.

Next, we had to filter the database for various reasons. For the rest of our analysis, certain columns will be important, such as the **Goals** column. However, when we were still getting to know our database, we noticed that this column produced some surprising results. In fact, this column represents the number of goals per 90 minutes, but some players had crazy statistics. *Pablo Sarabia*, for example, scored 5 goals every 90 minutes. The problem was that *Sarabia* hadn't played many minutes (22). We therefore realized that players who had been effective but had played few minutes would have disproportionately high statistics, because their statistics would then be weighted against the 90 minutes that our database covers.

So, using the *`filter()`* function, we took the initiative of only keeping players who had played at least 9 matches **(MP \>= 9)** and who had played at least 405 minutes **(Min \>= 405)**. This choice was made because we assumed that our players had to have played at least half the matches in half a season, because as we said, some players were transferred during the middle of the season. Moreover, in terms of minutes, we wanted them to have played at least one half of the 9 matches they played (45 minutes), and by multiplying that by the number of matches, we arrived at our figures. Thus, we only want to keep the attacking players, so those whose positions begin with the letter **'F'** for Forward.

Now that the database has been filtered, we are missing two columns for the rest of our project: **Height** and **Weight**. To do this, we decided to take a database from the FIFA21 game, the year of our statistics, which had the missing characteristics. However, here too we encountered a number of problems.

![](Rplot05.png){width="265"}

Firstly, we needed a common key to join the two databases. To do this, *`rename()`* allowed us to rename **Name** to **Player** and then, thanks to *`left_join()`*, the two databases were joined. Now we needed to see which players didn't have values for **Height** and **Weight**, so we created a *height_na* list using *`filter(is.na())`*. So 85 players had missing values. For a start, we could have players who simply didn't have the same spelling, for example *Sehrou/Serhou Guirassy* depending on the database. Then there was the fact that the FIFA21 database had full names, meaning that some players had their 2nd and 3rd first names included, something that was not in our database. Finally, there were some players who simply didn't appear in the game.

To overcome these problems, we tried various solutions. The one we kept was to separate the **Player** column into **Surname** and **Name**, using *`separate()`*`,` in order to be able to search and fill in via the **Name** common key. The problem with this solution was that we now had duplicates that we had to remove. This solution enabled us to reduce the number of missing values to 50.

![](Rplot06.png){width="348"}

A final attempt was to use several common keys at the same time. To do this, we needed the year of birth and the team in which the player plays. Once we had made sure we had these common keys, a new *`left_join()`* with a *by = c("Born", "Squad")* inside was used, and we could try to fill in the missing NAs. This choice of common keys was made on the assumption that if we only had strikers, it was quite possible that the strikers in the same team would differ in age, which would help us to maximize our chances of replacements. That's how we got down to 38 values.

However, we realized that it would be too complex to find the last missing values. So we stopped and looked at our *height_na* and realized that most of these players via the **Goals** column would not interest us for the rest of our analysis. We therefore took the initiative of manually replacing the **Height** and **Weight** of the best player from the **Goals** column for each of the 5 leagues, using *mutate()*, in order to keep players who might be of interest to us for the analysis. For the rest of the players, we decided to remove them from our database using *`filter(!is.na())`*`.`

It was now necessary to re-join **Surname** and **Name** as **Player** to avoid NAs filling up in one of the columns because of Brazilian players, for example, who are only called by their name. To make sure that all data like "goals","assists", are easy to compare we had to normalize them around 100% of the best performance of the category.

Before concluding, you should know that in our analysis we want to compare the statistical and physical trends between the different leagues. So, to finish with this database, we wanted to create 5 different databases in order to separate the players in each league, and to do this we had to create *"comp_players"* using the *`filter()`* function, we did this separation twice : One with the normalized data and the other with the raw datas.

We now have the databases we need to approach the various remaining stages of this project.

![](Rplot07.png){width="299"}

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Rk </td>
   <td style="text-align:left;color: black !important;"> Rank of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Player </td>
   <td style="text-align:left;color: black !important;"> Player's name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Nation </td>
   <td style="text-align:left;color: black !important;"> Player's nation </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Pos </td>
   <td style="text-align:left;color: black !important;"> Position </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Squad </td>
   <td style="text-align:left;color: black !important;"> Squad's name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Comp </td>
   <td style="text-align:left;color: black !important;"> League that squad occupies </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Born </td>
   <td style="text-align:left;color: black !important;"> Year of birth </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Mp </td>
   <td style="text-align:left;color: black !important;"> Matches played </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Min </td>
   <td style="text-align:left;color: black !important;"> Minutes played </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Goals </td>
   <td style="text-align:left;color: black !important;"> Goals scored or allowed </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SoT% </td>
   <td style="text-align:left;color: black !important;"> Shots on target percentage (Does not include penalty kicks) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> G/Sh </td>
   <td style="text-align:left;color: black !important;"> Goals per shot </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> ShoDist </td>
   <td style="text-align:left;color: black !important;"> Average distance, in yards, from goal of all shots taken (Does not include penalty kicks) </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasTotAtt </td>
   <td style="text-align:left;color: black !important;"> Passes attempted </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PasTotCmp% </td>
   <td style="text-align:left;color: black !important;"> Pass completion percentage </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Assists </td>
   <td style="text-align:left;color: black !important;"> Assists </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> PPA </td>
   <td style="text-align:left;color: black !important;"> Completed passes into the 18-yard box </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> CrsPA </td>
   <td style="text-align:left;color: black !important;"> Completed crosses into the 18-yard box </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> SCA </td>
   <td style="text-align:left;color: black !important;"> Shot-creating actions </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GCA </td>
   <td style="text-align:left;color: black !important;"> Goal-creating actions </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> GcaDrib </td>
   <td style="text-align:left;color: black !important;"> Successful dribbles that lead to a goal </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Press% </td>
   <td style="text-align:left;color: black !important;"> Percentage of time the squad gained possession withing five seconds of applying pressure </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> DriAtt </td>
   <td style="text-align:left;color: black !important;"> Dribbles attempted </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> DriSucc% </td>
   <td style="text-align:left;color: black !important;"> Percentage of dribbles completed successfully </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Fld </td>
   <td style="text-align:left;color: black !important;"> Fouls drawn </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> AERwon% </td>
   <td style="text-align:left;color: black !important;"> Percentage of aerials won </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Height </td>
   <td style="text-align:left;color: black !important;"> Height of the player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Weight </td>
   <td style="text-align:left;color: black !important;"> Weight of the player </td>
  </tr>
</tbody>
</table>

`````

:::
:::

## 2.2.3 Data leagues clean

ex :

This database was created from multible *`tibbles`* created from statista since this information was not easily accessible as a csv file. The first tibble contains the revenue of the big 5 leagues from 2012 to 2024 and the second one is the revenu of tv rights broadcast of those big 5 leagues for the period 2021-2022.

The second step was to merge those *`tibbles`* to the chosen info of our database called data1 that contains cleaned data of the players chosen for our analysis, to do so we wanted to use the *`left_join`* function with "comp" as a similar key, the problem was that in the merged database we wanted the dates as headers and the leagues as values for the "comp" column as it was the opposite for one of the *`tibbles.`*To resolve this problem we *`transposed`* the data base "Pibcomp" so it could fit in the merged database. Now that the problem was finished we used *`left join`* and used the function *`select`* and *`everything`* while joining data1 to not clog the database with useless info and better the readability.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Comp </td>
   <td style="text-align:left;color: black !important;"> League's name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> surname </td>
   <td style="text-align:left;color: black !important;"> Surname of player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Name </td>
   <td style="text-align:left;color: black !important;"> Name of player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Nation </td>
   <td style="text-align:left;color: black !important;"> country code </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> squad </td>
   <td style="text-align:left;color: black !important;"> team's name </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> TV_Revenue_in_Mio </td>
   <td style="text-align:left;color: black !important;"> Tv revenue of league </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2012-2013 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2012-2013 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2013-2014 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2013-2014 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2014-2015 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2014-2015 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2015-2016 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2015-2016 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2016-2017 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2016-2017 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2017-2018 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2017-2018 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2018-2019 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2018-2019 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2019-2020 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2019-2020 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2020-2021 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2020-2021 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2021-2022 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2021-2022 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2022-2023 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2022-2023 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> 2023-2024 </td>
   <td style="text-align:left;color: black !important;"> The revenue of the league for 2023-2024 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

source : <https://fr.statista.com/infographie/24103/montant-des-droits-tv-domestiques-ligue-1-et-grands-championnats-europeens/>

<https://www.statista.com/statistics/261218/big-five-european-soccer-leagues-revenue/>

## 2.2.4 Nation info for players clean

Ex : This database is the database linking informations about the players and of their country of origin like the evolution of the GDP or the demography.

The constituing database are data1 which is the cleaned database of players, World .csv which is the evolution of demography and gdp.csv which is the evolution of GDP. To merge those database we wanted to use left_join but with a similar pivot containing country codes. The problem was the following : GDP didn't have any country code column but a "complete name" one .

To resolve the problem we created a custom list linking country codes to a "complete version" for example "ENG" was linked to "England", we then joined this list to GDP by using the complete names as a pivot (here called abre) with the help of the function *`rename`* and *`left_pivot.`*

We then had to add the info of players ,the problem was the following : The two databases had different encoding for country codes so we tried to convert them using the *`countrycode`* package, problem was that the coding for data1 was a custom one probably used for the abbreviation of football teams not recognized by the package, so we first tried with the custom list . The listed matched in part but we had almost 30% of missing values so we had to improvise. We created a second list ( called abre2) that included the differences between the two lists added it to the data1 and linked the 3 databases together.

![Missing values](Rplot.png)

we searched for outliers with the function :

`test <- test[, !names(test) %in% c("abre", "abre2","Country.Code")]`

`rows_with_na <- test[!complete.cases(test), ]`

We had some outliers that we had to correct manually for example "England" had to be corrected to "United Kingdom" or Congo had to be corrected to "Congo, Democratic Republic of" or "Congo, Dem. Rep." depending of the list .

![Missing values](Rplot03.png)

Then we manually added the key info and dropped the rest to finally arrive to 0% of missing rows.

::: {.cell layout-align="center"}
::: {.cell-output-display}

`````{=html}
<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variables </th>
   <th style="text-align:left;"> Meaning </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;color: black !important;"> Nation </td>
   <td style="text-align:left;color: black !important;"> Country code </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Surname </td>
   <td style="text-align:left;color: black !important;"> Surname of player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Name </td>
   <td style="text-align:left;color: black !important;"> Name of player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Squad </td>
   <td style="text-align:left;color: black !important;"> Squad of player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> Comp </td>
   <td style="text-align:left;color: black !important;"> League of player </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1999.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 1999 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2000.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2000 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2001.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2001 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2002.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2002 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2003.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2003 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2004.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2004 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2005.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2005 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2006.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2006 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2007.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2007 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2008.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2008 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2009.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2009 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2010.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2010 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2011.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2011 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2012.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2012 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2013.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2013 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2014.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2014 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2015.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2015 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2016.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2016 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2017.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2017 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2018.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2018 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2019.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2019 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2020.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2020 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2021.x </td>
   <td style="text-align:left;color: black !important;"> GDP in 2021 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> x2022 </td>
   <td style="text-align:left;color: black !important;"> GDP in 2022 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1960.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1960 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1961.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1961 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1962.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1962 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1963.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1963 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1964.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1964 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1965.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1965 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1966.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1966 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1967.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1967 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1968.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1968 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1969.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1969 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1970.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1970 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1971.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1971 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1972.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1972 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1973.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1973 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1974.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1974 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1975.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1975 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1976.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1976 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1977.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1977 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1978.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1978 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1979.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1979 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1980.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1980 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1981.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1981 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1982.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1982 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1983.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1983 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1984.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1984 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1985.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1985 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1986.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1986 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1987.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1987 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1988.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1988 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1989.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1989 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1990.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1990 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1991.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1991 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1992.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1992 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1993.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1993 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1994.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1994 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1995.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1995 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1996.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1996 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1997.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1997 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1998.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1998 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X1999.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 1999 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2000.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2000 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2001.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2001 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2002.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2002 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2003.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2003 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2004.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2004 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2005.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2005 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2006.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2006 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2007.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2007 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2008.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2008 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2009.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2009 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2010.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2010 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2011.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2011 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2012.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2012 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2013.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2013 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2014.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2014 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2015.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2015 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2016.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2016 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2017.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2017 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2018.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2018 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2019.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2019 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2020.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2020 </td>
  </tr>
  <tr>
   <td style="text-align:left;color: black !important;"> X2021.x </td>
   <td style="text-align:left;color: black !important;"> Population of country in 2021 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

source : <https://www.kaggle.com/datasets/iamsouravbanerjee/world-population-dataset>

<https://www.kaggle.com/code/alejopaullier/gdp-by-country-1999-2022>

::: {.cell layout-align="center"}

:::

# 3 EDA

## 3.1 EDA Ballon d'or

::: {.cell layout-align="center"}
::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-1.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-2.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-3.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-4.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-5.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-6.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-7.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-8.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-9.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-10.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-11.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-12.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Ballon or-13.png){fig-align='center' width=70%}
:::
:::

## 3.2 EDA Skillc

::: {.cell layout-align="center"}
::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-1.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-2.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-3.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-4.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-5.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-6.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-7.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-8.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-9.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-10.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-11.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-12.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-13.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-14.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-15.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-16.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-17.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-18.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-19.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-20.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-21.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-22.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-23.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-24.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-25.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-26.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-27.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-28.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-29.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-30.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-31.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-32.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-33.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-34.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-35.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-36.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-37.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-38.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-39.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-40.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-41.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-42.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-43.png){fig-align='center' width=70%}
:::

::: {.cell-output-display}
![](report_files/figure-html/EDA Skillc-44.png){fig-align='center' width=70%}
:::
:::

-   Mapping out the underlying structure
-   Identifying the most important variables
-   Univariate visualizations
-   Multivariate visualizations
-   Summary tables

# Analysis

::: {.cell layout-align="center"}

:::

* Answers to the research questions
* Different methods considered
* Competing approaches
* Justifications

# Conclusion

::: {.cell layout-align="center"}

:::

* Take home message
* Limitations
* Future work?