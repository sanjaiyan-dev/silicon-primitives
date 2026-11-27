
# Entity: alu 
- **File**: alu.sv

## Diagram
![Diagram](alu.svg "Diagram")
## Generics

| Generic name | Type | Value | Description |
| ------------ | ---- | ----- | ----------- |
| WIDTH        |      | 8     |             |
| W_ALU_SEL    |      | 3     |             |

## Ports

| Port name | Direction | Type             | Description |
| --------- | --------- | ---------------- | ----------- |
| bus_a     | input     | [WIDTH -1:0]     |             |
| bus_b     | input     | [WIDTH -1:0]     |             |
| alu_out   | output    | [WIDTH -1:0]     |             |
| alu_sel   | input     | [W_ALU_SEL -1:0] |             |
| zero      | output    |                  |             |
| negative  |           |                  |             |

## Processes
- unnamed: (  )
  - **Type:** always_comb
