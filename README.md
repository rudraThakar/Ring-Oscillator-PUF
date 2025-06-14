# Ring Oscillator Based PUF

- What are PUF?
PUF stands for Physically Unclonable Functions. They are used as the "fingerprints" of electronics devices, to ensure there is no tempering done in any componenet of the circuit.

- Here, we will focus on a type of PUF called the Ring Oscillator PUF. It uses a ring Oscillator (chain of inverter gates) at its core principle.

### How dos a Ring-oscillator Based PUF work?
- Each inverter gate will have its own, unique delay which is produced during its manufacturing, placemnent of the gate on the chip and other factors.
- Thus, a Ring Oscllator, made by odd numbers of Inverter Gates will also have a unique frequency of Oscillation (which is due to the differnet delays that each inverter has, due to its manufacturing).
- We use this fact and compare the frequency of 2 Ring Oscillator (say A and B) and generate a response bit (r[0])
- r[0] = 0 if frea(A) > frea(B)
- r[0] = 1 if freq(A) <freq(B)
