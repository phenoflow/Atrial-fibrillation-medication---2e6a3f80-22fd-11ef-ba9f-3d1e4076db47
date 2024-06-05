cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  atrial-fibrillation-medication-400mg---primary:
    run: atrial-fibrillation-medication-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  atrial-fibrillation-medication-100mg---primary:
    run: atrial-fibrillation-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-400mg---primary/output
  atrial-fibrillation-medication-amyben---primary:
    run: atrial-fibrillation-medication-amyben---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-100mg---primary/output
  atrial-fibrillation-medication-flecainide---primary:
    run: atrial-fibrillation-medication-flecainide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-amyben---primary/output
  atrial-fibrillation-medication-125mg---primary:
    run: atrial-fibrillation-medication-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-flecainide---primary/output
  atrial-fibrillation-medication-625microgram---primary:
    run: atrial-fibrillation-medication-625microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-125mg---primary/output
  atrial-fibrillation-medication-amiodarone---primary:
    run: atrial-fibrillation-medication-amiodarone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-625microgram---primary/output
  atrial-fibrillation-medication-capsule---primary:
    run: atrial-fibrillation-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-amiodarone---primary/output
  atrial-fibrillation-medication-cordarone---primary:
    run: atrial-fibrillation-medication-cordarone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-capsule---primary/output
  atrial-fibrillation-medication-150mg---primary:
    run: atrial-fibrillation-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-cordarone---primary/output
  atrial-fibrillation-medication-250mg---primary:
    run: atrial-fibrillation-medication-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-150mg---primary/output
  atrial-fibrillation-medication-50microgram---primary:
    run: atrial-fibrillation-medication-50microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-250mg---primary/output
  atrial-fibrillation-medication-betacardone---primary:
    run: atrial-fibrillation-medication-betacardone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-50microgram---primary/output
  atrial-fibrillation-medication-suspension---primary:
    run: atrial-fibrillation-medication-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-betacardone---primary/output
  atrial-fibrillation-medication-ampoule---primary:
    run: atrial-fibrillation-medication-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-suspension---primary/output
  atrial-fibrillation-medication-sotalol---primary:
    run: atrial-fibrillation-medication-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-ampoule---primary/output
  atrial-fibrillation-medication-tambocor---primary:
    run: atrial-fibrillation-medication-tambocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-sotalol---primary/output
  atrial-fibrillation-medication-darmil---primary:
    run: atrial-fibrillation-medication-darmil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-tambocor---primary/output
  atrial-fibrillation-medication-200mg---primary:
    run: atrial-fibrillation-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-darmil---primary/output
  atrial-fibrillation-medication-sotacor---primary:
    run: atrial-fibrillation-medication-sotacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-200mg---primary/output
  atrial-fibrillation-medication-digamex---primary:
    run: atrial-fibrillation-medication-digamex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-sotacor---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: atrial-fibrillation-medication-digamex---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
