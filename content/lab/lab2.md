---
date: '2025-02-04T15:52:10-07:00'
draft: false
title: 'Lab2'
weight: 2
---

# Lab 2: Torque and Moment Arms  KIN 325

## Learning Objectives
Upon completion of this lab students will:

- Demonstrate the ability to use a simple biomechanical model to estimate the force being generated by muscles during an isometric contraction.
- Explain the strengths, limitations, and assumptions of using simple biomechanical models.
- Demonstrate proficiency in using a hand-held dynamometer for assessing muscle strength.

## Background
As we have discussed in lecture, determining the force a given muscle is generating based on an external resistance can be a complex, challenging task. One method for addressing this question is to use a simple biomechanical model of the joint/muscles in question. In this lab we will use such a model to calculate the force produced by the biceps brachii muscle during an isometric biceps curl. We will also determine if there is a relationship between the external load applied and the force the biceps brachii muscle must exert to overcome that external load.  

## Before You Begin
Form two hypotheses:
1. Will muscle force be different at different joint angles? You will calculate muscle forces at four different elbow flexion angles: **35°**, **65°**, **95°**, and **115°**. At which angle do you think muscle forces will be the greatest?
2. Does the external load, i.e., the resistance you need to overcome, predict the muscle force?

## Data Collection - Part I - Anthropometrics
Use the free body diagrams presented at the beginning of class to set up the equations required to calculate the force produced by the biceps brachii muscle during an isometric biceps curl exercise. Some of the variables in your equation (listed below) dealt with the anthropometrics of your participant:

- **X**: Distance from the elbow center of rotation (COR) to the point of application of the external load.
- **L**: Distance from the elbow COR to center of mass of the forearm.
- **m**: Forearm mass.

Before the lab can be completed these should be determined. Pick a member of your group who will be your participant. Then measure or calculate the following:

- **X** = distance from the elbow axis to wrist where the external load will be applied.  

0.23

- **L** = *0.682 * X* – This will be the distance from the elbow to the forearm center of mass.

.157

- **m** = *0.022 * body mass (in kg)*. This is the mass of the forearm.

53*0.022 = 1.166

## Data Collection - Part II
In a study such as this, one needs to know the moment arm for the muscle of interest relative to the joint COR, and how the moment arm changes with changing joint angles. Usually, one can find cadaver studies in the literature which report the desired moment arm at various joint angles. A common technique is to then fit an equation to that data so the moment arm can be calculated at any joint angle.

Use the `bicepsmomentarm.txt` file in the Lab 2 folder on D2L to create a scatter plot showing the elbow flexion angle on the x-axis and the biceps moment arm on the y-axis.

1. Right-click on the data set and add a trendline.
2. Under the trendline options specify that you want to fit a **3rd order polynomial**.
3. Click the checkboxes for **display equation on chart** and **show R² value on chart**.

The **R²** will tell you how good the fit is. The equation will allow you to calculate the moment arm at any joint angle from **0 to 130°**.

Use the equation you develop to determine the biceps brachii moment arm at the four elbow flexion angles shown in the table below.

| Elbow Flexion Angle (°) | Moment Arm (m) |
|------------------------|----------------|
| 35°                   | 0.02846375 |
| 65°                   | 0.04251125 |
| 95°                   | 0.04962875 |
| 115°                  | 0.04812375 |

This was calculated using
```
=-0.00000003 * B3^3 + 0.000002 * B3^2 + 0.0005 * B3 + 0.0098
```


## Data Collection - Part III – Measure Resistive Force
The person whose arm length you measured in Part 1 will be your participant. Make sure to note their **sex, height, and mass**.

| sex | height | mass |
|-----|--------|------|
| female | 5'4" | 53 kg |

1. With their arm at their side and the humerus vertical, have them flex their elbow to **35°**. Use the goniometer to measure the elbow flexion angle.
2. Place the hand-held dynamometer at their wrist. Have your participant push against the dynamometer as hard as they possibly can while another person from the group resists the force. Make sure this is an isometric contraction and the elbow angle does not change. You may need a few practice trials to perform a stable reading.
3. The dynamometer will report the peak force applied. Record this number and the joint angle tested.
   - **Note:** If you do not get a good measurement (i.e., the dynamometer slips, the person cannot resist the contraction, the number is very different than other measures at this angle, etc.), then repeat the measurement.
4. Repeat for a total of **four trials per elbow joint angle**. Allow for **1-minute rest**, or as needed by the participant, between trials.
5. Repeat steps **1–4** for **65°**, **95°**, and **115°** of elbow flexion.

## Data Analysis
1. Use the equations derived from the free body diagram presented at the beginning of class, the anthropometric data you calculated in **Part I**, the moment arm data you derived in **Part II**, and the resistive forces you measured in **Part III**, to calculate the muscle force required from the biceps brachii muscle for each isometric contraction.
   - Rather than calculating each force for each trial by hand, you may want to set up the calculations in Excel.
   - If using Excel, set up the calculation for the first trial at the first joint angle and then use it as a template for the other trials and angles.
   - If you do this, be careful with the **sin** and **cos** values for the moment arms.
   - You may also perform the calculations by hand if you wish.

2. Perform the appropriate **statistical test** (with appropriate pair-wise comparisons and effect sizes for any statistically significant comparisons) to determine whether **biceps muscle forces change with elbow flexion angle**.

3. Perform the appropriate **statistical test** to determine whether the **external load predicts biceps muscle force**. If so, what percentage of the variance in biceps muscle force is explained by the external load?

## Questions to Consider for Your Discussion Section
1. Did your results support your hypothesis? Why or why not? Can you explain your results using what you know about muscle physiology and function? Think specifically about **force-length relationships**.
2. Do you think you would see the same results for **non-isometric** situations? In other words, would the relationship between external force and muscle force still exist for **eccentric** or **concentric contractions**?
3. Consider the following important assumptions made/limitations in performing this study and discuss how they impact your results:
   - Direction of the applied resistive force.
   - Which muscles actually contribute to elbow flexion.
