package BenchPressSafetyAssist {
    private import ScalarValues::*;

    item def RequirementItem {
        attribute id : String;
        attribute text : String;
    }

    part def Subsystem {
        attribute name : String;
    }

    part def System {
        part requirements : RequirementItem [*];
        part subsystems : Subsystem [*];
    }

    part benchPressSafetyAssist : System {
        part R_MSN_001 : RequirementItem {
            attribute id = "R-MSN-001";
            attribute text =
                "Provide on-demand self-spotting to improve safety during bench press.";
        }
        part R_MSN_002 : RequirementItem {
            attribute id = "R-MSN-002";
            attribute text =
                "Preserve free-weight characteristics including natural range of motion and stabilizer engagement.";
        }
        part R_MSN_003 : RequirementItem {
            attribute id = "R-MSN-003";
            attribute text =
                "Support users from beginners to experienced lifters without a dedicated spotter.";
        }
        part R_MSN_004 : RequirementItem {
            attribute id = "R-MSN-004";
            attribute text = "Be suitable for typical gym environments and common bench setups.";
        }
        part R_MSN_005 : RequirementItem {
            attribute id = "R-MSN-005";
            attribute text =
                "Increase user independence and confidence by reducing reliance on external assistance.";
        }

        part R_FUNC_001 : RequirementItem {
            attribute id = "R-FUNC-001";
            attribute text = "Allow normal bench-press repetitions with minimal interference.";
        }
        part R_FUNC_002 : RequirementItem {
            attribute id = "R-FUNC-002";
            attribute text = "Provide user-initiated safety engagement during a lift.";
        }
        part R_FUNC_003 : RequirementItem {
            attribute id = "R-FUNC-003";
            attribute text = "Arrest and support barbell load when safety is engaged.";
        }
        part R_FUNC_004 : RequirementItem {
            attribute id = "R-FUNC-004";
            attribute text = "Provide a defined recovery outcome after safety engagement.";
        }
        part R_FUNC_005 : RequirementItem {
            attribute id = "R-FUNC-005";
            attribute text = "Return to ready state after safety event or exercise completion.";
        }
        part R_FUNC_006 : RequirementItem {
            attribute id = "R-FUNC-006";
            attribute text = "Be addable to existing equipment with limited modifications.";
        }

        part R_PERF_001 : RequirementItem {
            attribute id = "R-PERF-001";
            attribute text = "Support at least 640 lb total static load during safety event.";
        }
        part R_PERF_002 : RequirementItem {
            attribute id = "R-PERF-002";
            attribute text =
                "Preserve free-weight-like range of motion without strict single-plane constraint.";
        }
        part R_PERF_003 : RequirementItem {
            attribute id = "R-PERF-003";
            attribute text = "Add negligible resistance during normal lifting motion.";
        }
        part R_PERF_004 : RequirementItem {
            attribute id = "R-PERF-004";
            attribute text = "Arrest motion within short travel interval upon engagement.";
        }
        part R_PERF_005 : RequirementItem {
            attribute id = "R-PERF-005";
            attribute text = "Withstand high-cycle repeated training use.";
        }

        part R_CNST_001 : RequirementItem {
            attribute id = "R-CNST-001";
            attribute text = "Be simple and intuitive to operate.";
        }
        part R_CNST_002 : RequirementItem {
            attribute id = "R-CNST-002";
            attribute text = "Prioritize reliability as a safety-critical feature.";
        }
        part R_CNST_003 : RequirementItem {
            attribute id = "R-CNST-003";
            attribute text =
                "Be cost-competitive by minimizing part count and using COTS where practical.";
        }
        part R_CNST_004 : RequirementItem {
            attribute id = "R-CNST-004";
            attribute text = "Be installable with common tools and minimal specialized labor.";
        }
        part R_CNST_005 : RequirementItem {
            attribute id = "R-CNST-005";
            attribute text =
                "Be maintainable with accessible components and minimal service burden.";
        }
        part R_CNST_006 : RequirementItem {
            attribute id = "R-CNST-006";
            attribute text =
                "Fit within typical bench-press footprint without obstructing users or traffic.";
        }
        part R_CNST_007 : RequirementItem {
            attribute id = "R-CNST-007";
            attribute text = "Maintain user comfort and avoid distracting interactions.";
        }

        part R_SAFE_001 : RequirementItem {
            attribute id = "R-SAFE-001";
            attribute text =
                "Fail-safe behavior prevents uncontrolled bar movement or increased hazard.";
        }
        part R_SAFE_002 : RequirementItem {
            attribute id = "R-SAFE-002";
            attribute text = "Do not introduce pinch or entrapment hazards in user areas.";
        }
        part R_SAFE_003 : RequirementItem {
            attribute id = "R-SAFE-003";
            attribute text =
                "Load-bearing elements include explicit safety margin for a safety device.";
        }
        part R_SAFE_004 : RequirementItem {
            attribute id = "R-SAFE-004";
            attribute text = "Address failure mid-repetition with defined protective behavior.";
        }

        part R_VER_001 : RequirementItem {
            attribute id = "R-VER-001";
            attribute text = "Capacity verified by static load test with acceptance criteria.";
        }
        part R_VER_002 : RequirementItem {
            attribute id = "R-VER-002";
            attribute text =
                "Interference verified by comparing resistance with and without system.";
        }
        part R_VER_003 : RequirementItem {
            attribute id = "R-VER-003";
            attribute text = "Safety engagement verified by repeatable arrest and support tests.";
        }
        part R_VER_004 : RequirementItem {
            attribute id = "R-VER-004";
            attribute text =
                "Retrofit verified on representative bench configurations with limited modifications.";
        }
        part R_VER_005 : RequirementItem {
            attribute id = "R-VER-005";
            attribute text = "Ease of use verified by user trials after minimal instruction.";
        }
        part R_VER_006 : RequirementItem {
            attribute id = "R-VER-006";
            attribute text = "Durability verified by endurance testing with pass/fail criteria.";
        }

        part ExerciseInteractionSubsystem : Subsystem {
            attribute name = "Exercise Interaction Subsystem";
        }
        part SafetyEngagementSubsystem : Subsystem {
            attribute name = "Safety Engagement Subsystem";
        }
        part LoadPathStructuralSubsystem : Subsystem {
            attribute name = "Load Path & Structural Subsystem";
        }
        part IntegrationRetrofitSubsystem : Subsystem {
            attribute name = "Integration & Retrofit Subsystem";
        }
        part UserInterfaceSubsystem : Subsystem {
            attribute name = "User Interface & Human Factors Subsystem";
        }
        part ReliabilityMaintenanceSubsystem : Subsystem {
            attribute name = "Reliability, Maintenance & Lifecycle Subsystem";
        }
        part AssuranceVerificationSubsystem : Subsystem {
            attribute name = "Assurance & Verification Subsystem";
        }
    }
}
