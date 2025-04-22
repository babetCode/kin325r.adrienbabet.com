---
date: '2025-04-22T09:07:10-06:00'
draft: false
title: 'Chap 10 HW'
weight: 15
math: true
---

## 1. Vocabulary

- **Deformable Body Mechanics**  
The study of how solid bodies deform under applied forces, combining principles of mechanics and material science. It includes analyzing stress, strain, and material behavior under load.  

- **Stress (σ)**  
A measure of internal resistance to deformation, defined as the applied force per unit area within a material (units: Pascals, Pa).  
**Formula:** $ \sigma = \frac{F}{A} $ (where $ F $ = force, $ A $ = cross-sectional area).  

- **Strain (ε)**  
A dimensionless measure of deformation representing the relative change in shape or size of a material due to applied stress.  
**Formula (Axial Strain):** $ \epsilon = \frac{\Delta L}{L_0} $ (where $ \Delta L $ = change in length, $ L_0 $ = original length).  

- **Stiffness**  
A material or structure's resistance to deformation under load. It depends on both material properties (e.g., Young’s Modulus) and geometry.  
**Formula (Axial Stiffness):** $ k = \frac{EA}{L} $ (where $ E $ = Young’s Modulus, $ A $ = cross-sectional area, $ L $ = length).  

- **Young’s Modulus (E)**  
A material property describing stiffness in the elastic regime, defined as the ratio of stress to strain (units: Pascals, Pa).  
**Formula:** $ E = \frac{\sigma}{\epsilon} $.  

- **Anisotropic**  
A material whose mechanical properties (e.g., stiffness, strength) vary depending on the direction of loading (e.g., wood, composites). Opposite of **isotropic** (uniform in all directions).  

- **Viscoelasticity**  
A material behavior combining viscous (fluid-like) and elastic (solid-like) responses, leading to time-dependent deformation (e.g., creep, stress relaxation). Common in polymers and biological tissues.  

- **Hysteresis**  
The energy loss (as heat) during cyclic loading and unloading of a material, represented by a loop in the stress-strain curve. Common in viscoelastic and plastic materials.  

## 2. Formula Central

### **1. Stress (σ) – The amount of stress an object experiences when a force is applied**  
**Formula:**  
$$
\sigma = \frac{F}{A}
$$  
**Explanation:**  
- **σ (Stress):** Internal resistance per unit area (Pa or N/m²).  
- **F (Force):** Applied external force (N).  
- **A (Area):** Cross-sectional area over which the force is distributed (m²).  
**Meaning:** Stress measures how concentrated a force is within a material. Higher stress means more force per unit area, increasing the risk of deformation or failure.

### **2. Strain (ε) – The amount of strain within a material as it is elongated**  
**Formula:**  
$$
\epsilon = \frac{\Delta L}{L_0}
$$  
**Explanation:**  
- **ε (Strain):** Dimensionless measure of deformation.  
- **ΔL:** Change in length (m).  
- **L₀:** Original length (m).  
**Meaning:** Strain quantifies how much a material stretches relative to its original size. A higher strain means more elongation (or compression).

### **3. Stiffness (k) – The stiffness of a material or structure**  
**Formula (Axial/Linear Stiffness):**  
$$
k = \frac{EA}{L}
$$  
**Explanation:**  
- **k (Stiffness):** Resistance to deformation (N/m).  
- **E (Young’s Modulus):** Material stiffness (Pa).  
- **A (Cross-sectional Area):** Influences load distribution (m²).  
- **L (Length):** Longer objects are less stiff.  
**Meaning:** Stiffness depends on both material (E) and geometry (A, L). A higher **k** means the material resists deformation more.

### **4. Young’s Modulus (E) – The stiffness of a material**  
**Formula:**  
$$
E = \frac{\sigma}{\epsilon}
$$  
**Explanation:**  
- **E (Young’s Modulus):** Intrinsic material stiffness (Pa).  
- **σ (Stress):** Applied force per unit area.  
- **ε (Strain):** Resulting deformation.  
**Meaning:** Measures how easily a material stretches under stress. High **E** (e.g., steel) = stiff; low **E** (e.g., rubber) = flexible.

### **5. Work-Energy Relationship**  
**Formula:**  
$$
W = \Delta KE + \Delta PE + \Delta U
$$  
**Explanation:**  
- **W (Work Done):** External energy input (J).  
- **ΔKE (Change in Kinetic Energy):** $ \frac{1}{2}mv^2 $.  
- **ΔPE (Change in Potential Energy):** $ mgh $.  
- **ΔU (Change in Internal Energy):** Heat/deformation losses.  
**Meaning:** Work done on a system changes its kinetic, potential, and internal energy (e.g., stretching a spring stores elastic energy).

### **6. Conservation of Energy (Ball Dropping from Height h)**  
**Formula:**  
$$
PE_{\text{initial}} = KE_{\text{final}} \quad \Rightarrow \quad mgh = \frac{1}{2}mv^2
$$  
**Explanation:**  
- **PE = mgh:** Potential energy at height **h**.  
- **KE = ½mv²:** Kinetic energy at impact.  
**Meaning:** Energy converts from potential to kinetic as the ball falls (ignoring air resistance).

### **7. Power Output (P)**  
**Formula:**  
$$
P = \frac{W}{t} \quad \text{or} \quad P = F \cdot v
$$  
**Explanation:**  
- **P (Power):** Rate of energy transfer (Watts, W).  
- **W (Work):** Energy expended (J).  
- **t (Time):** Duration (s).  
- **F (Force):** Applied force (N).  
- **v (Velocity):** Speed of motion (m/s).  
**Meaning:** Power measures how quickly work is done (e.g., lifting weights faster requires more power).

### **Summary Table**  
| Concept | Formula | Key Variables | Meaning |  
|---------|---------|--------------|---------|  
| **Stress** | $ \sigma = \frac{F}{A} $ | Force (F), Area (A) | Force concentration in material |  
| **Strain** | $ \epsilon = \frac{\Delta L}{L_0} $ | Length change (ΔL), Original length (L₀) | Deformation relative to size |  
| **Stiffness** | $ k = \frac{EA}{L} $ | Young’s Modulus (E), Area (A), Length (L) | Resistance to deformation |  
| **Young’s Modulus** | $ E = \frac{\sigma}{\epsilon} $ | Stress (σ), Strain (ε) | Intrinsic material stiffness |  
| **Work-Energy** | $ W = \Delta KE + \Delta PE + \Delta U $ | Kinetic (KE), Potential (PE), Internal (U) energy | Energy transfer/transformation |  
| **Conservation of Energy** | $ mgh = \frac{1}{2}mv^2 $ | Mass (m), Height (h), Velocity (v) | PE → KE conversion |  
| **Power** | $ P = \frac{W}{t} $ or $ P = Fv $ | Work (W), Time (t), Force (F), Velocity (v) | Rate of energy use |  

Let me know if you'd like deeper explanations or examples!
