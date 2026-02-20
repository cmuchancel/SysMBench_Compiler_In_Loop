package AssistiveSitToStand {
    private import ScalarValues::*;

    enum def ReqStatus {
        enum satisfied;
        enum verified;
        enum TBD;
    }

    part def Requirement {
        attribute id : String;
        attribute text : String;
        attribute status : ReqStatus;
    }

    part def RequirementSet {
        part r_msn_001 : Requirement {
            id = "R-MSN-001";
            text = "Assist user transfer from seated to standing.";
            status = ReqStatus::satisfied;
        }
        part r_msn_002 : Requirement {
            id = "R-MSN-002";
            text = "Support home and care-facility use for frequent transfers.";
            status = ReqStatus::satisfied;
        }
        part r_msn_003 : Requirement {
            id = "R-MSN-003";
            text = "Support independent use without high-strength assistant.";
            status = ReqStatus::satisfied;
        }
        part r_msn_004 : Requirement {
            id = "R-MSN-004";
            text =
                "Compatible with standard manual wheelchair and not prevent mobility when not transferring.";
            status = ReqStatus::satisfied;
        }
        part r_msn_005 : Requirement {
            id = "R-MSN-005";
            text = "Usable without external setup equipment beyond chair integration.";
            status = ReqStatus::satisfied;
        }

        part r_perf_001 : Requirement {
            id = "R-PERF-001";
            text = "Create controlled transfer motion to stable standing posture.";
            status = ReqStatus::satisfied;
        }
        part r_perf_002 : Requirement {
            id = "R-PERF-002";
            text = "Apply assistive action to seat region to reduce effort.";
            status = ReqStatus::satisfied;
        }
        part r_perf_003 : Requirement {
            id = "R-PERF-003";
            text = "Enable at least 45 deg rotation during assist.";
            status = ReqStatus::satisfied;
        }
        part r_perf_004 : Requirement {
            id = "R-PERF-004";
            text = "Provide assistive force sufficient to reduce required effort.";
            status = ReqStatus::satisfied;
        }
        part r_perf_005 : Requirement {
            id = "R-PERF-005";
            text = "Complete transfer in practical time for routine use.";
            status = ReqStatus::satisfied;
        }
        part r_perf_006 : Requirement {
            id = "R-PERF-006";
            text = "Provide repeatable transfer behavior without recalibration.";
            status = ReqStatus::satisfied;
        }

        part r_cnst_001 : Requirement {
            id = "R-CNST-001";
            text = "Support minimum user load of 185 lb during transfer.";
            status = ReqStatus::satisfied;
        }
        part r_cnst_002 : Requirement {
            id = "R-CNST-002";
            text = "Add no more than 40 N push effort during rolling.";
            status = ReqStatus::satisfied;
        }
        part r_cnst_003 : Requirement {
            id = "R-CNST-003";
            text = "Fit within max added dimension 18 in beyond boundaries.";
            status = ReqStatus::satisfied;
        }
        part r_cnst_004 : Requirement {
            id = "R-CNST-004";
            text = "Provide more than 50 percent of standing moment.";
            status = ReqStatus::satisfied;
        }
        part r_cnst_005 : Requirement {
            id = "R-CNST-005";
            text = "Low cost for broad accessibility.";
            status = ReqStatus::satisfied;
        }
        part r_cnst_006 : Requirement {
            id = "R-CNST-006";
            text = "Simple and easy to use with minimal training.";
            status = ReqStatus::satisfied;
        }

        part r_int_001 : Requirement {
            id = "R-INT-001";
            text = "Attach to wheelchair without compromising integrity.";
            status = ReqStatus::satisfied;
        }
        part r_int_002 : Requirement {
            id = "R-INT-002";
            text = "Include intuitive user control interface.";
            status = ReqStatus::satisfied;
        }
        part r_int_003 : Requirement {
            id = "R-INT-003";
            text = "Defined power interface with safe connections.";
            status = ReqStatus::satisfied;
        }
        part r_int_004 : Requirement {
            id = "R-INT-004";
            text = "Not obstruct wheels, hand rims, brakes, or footrests.";
            status = ReqStatus::satisfied;
        }

        part r_safe_001 : Requirement {
            id = "R-SAFE-001";
            text = "Maintain stability and avoid tipping/oscillation.";
            status = ReqStatus::satisfied;
        }
        part r_safe_002 : Requirement {
            id = "R-SAFE-002";
            text = "Meet minimum factor of safety 4.5 for load-bearing elements.";
            status = ReqStatus::satisfied;
        }
        part r_safe_003 : Requirement {
            id = "R-SAFE-003";
            text = "Provide controlled motion with safe stop capability.";
            status = ReqStatus::satisfied;
        }
        part r_safe_004 : Requirement {
            id = "R-SAFE-004";
            text = "Fail-safe on power loss or fault to prevent uncontrolled motion.";
            status = ReqStatus::satisfied;
        }
        part r_safe_005 : Requirement {
            id = "R-SAFE-005";
            text = "Minimize pinch/entrapment hazards.";
            status = ReqStatus::satisfied;
        }

        part r_ram_001 : Requirement {
            id = "R-RAM-001";
            text = "Withstand repeated daily transfer cycles over service life.";
            status = ReqStatus::satisfied;
        }
        part r_ram_002 : Requirement {
            id = "R-RAM-002";
            text = "Allow routine inspection and maintenance with common tools.";
            status = ReqStatus::satisfied;
        }
        part r_ram_003 : Requirement {
            id = "R-RAM-003";
            text = "Replace wear components without disassembly of major elements.";
            status = ReqStatus::satisfied;
        }
        part r_ram_004 : Requirement {
            id = "R-RAM-004";
            text = "User contact surfaces cleanable; soft goods removable or maintainable.";
            status = ReqStatus::satisfied;
        }

        part r_ver_001 : Requirement {
            id = "R-VER-001";
            text = "Verify by demonstrating transfer for minimum load.";
            status = ReqStatus::verified;
        }
        part r_ver_002 : Requirement {
            id = "R-VER-002";
            text = "Verify transfer angle at least 45 deg.";
            status = ReqStatus::verified;
        }
        part r_ver_003 : Requirement {
            id = "R-VER-003";
            text = "Verify stability throughout transfer.";
            status = ReqStatus::verified;
        }
        part r_ver_004 : Requirement {
            id = "R-VER-004";
            text = "Verify factor of safety via analysis/test.";
            status = ReqStatus::verified;
        }
        part r_ver_005 : Requirement {
            id = "R-VER-005";
            text = "Validate usability via user trials with minimal instruction.";
            status = ReqStatus::verified;
        }
    }

    part def TransferAssistanceSubsystem {
        attribute minTransferAngleDeg : Real = 45;
        attribute controlledMotion : Boolean = true;
        attribute assistiveSeatAction : Boolean = true;
        attribute repeatableCycles : Boolean = true;
    }

    part def UserInterfaceControlsSubsystem {
        attribute startStopControl : Boolean = true;
        attribute statusIndication : Boolean = true;
        attribute safeStop : Boolean = true;
        attribute lowStrengthOperable : Boolean = true;
    }

    part def WheelchairIntegrationSubsystem {
        attribute compatibleWithManualWheelchair : Boolean = true;
        attribute preservesMobilityFeatures : Boolean = true;
        attribute structuralIntegrityMaintained : Boolean = true;
        attribute maxAddedDimensionIn : Real = 18;
    }

    part def LoadPathStructuralSupportSubsystem {
        attribute minUserLoadLb : Real = 185;
        attribute factorOfSafety : Real = 4.5;
        attribute stabilityMaintained : Boolean = true;
    }

    part def PowerProtectionSubsystem {
        attribute safeElectricalConnection : Boolean = true;
        attribute powerInterfaceDefined : Boolean = true;
        attribute failSafeOnPowerLoss : Boolean = true;
    }

    part def SafetyAssuranceSubsystem {
        attribute preventUncontrolledMotion : Boolean = true;
        attribute minimizePinchPoints : Boolean = true;
        attribute stableTransfer : Boolean = true;
    }

    part def MaintenanceLifecycleSupportSubsystem {
        attribute commonToolsMaintenance : Boolean = true;
        attribute cleanableSurfaces : Boolean = true;
        attribute replaceableWearComponents : Boolean = true;
    }

    part def AssistiveSitToStandSystem {
        part transferAssist : TransferAssistanceSubsystem;
        part uiControls : UserInterfaceControlsSubsystem;
        part integration : WheelchairIntegrationSubsystem;
        part loadPath : LoadPathStructuralSupportSubsystem;
        part powerProtect : PowerProtectionSubsystem;
        part safety : SafetyAssuranceSubsystem;
        part maintenance : MaintenanceLifecycleSupportSubsystem;

        attribute addedPushEffortN : Real = 40;
        attribute standingMomentContribution : Real = 0.5;
        attribute portabilityNoExternalSetup : Boolean = true;
        attribute usabilityIndependent : Boolean = true;
        attribute timePracticalForDailyUse : Boolean = true;
        attribute lowCostDesign : Boolean = true;
    }

    part def Model {
        part requirements : RequirementSet;
        part system : AssistiveSitToStandSystem;
    }

    part model : Model;
}
