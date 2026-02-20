package DoorAssistModel {
    private import ScalarValues::*;

    enum def SystemStatus {
        enum Ready;
        enum Active;
        enum Fault;
        enum Standby;
    }

    item def UserRequest {
        attribute requested : Boolean;
    }

    item def StatusSignal {
        attribute status : SystemStatus;
    }

    port def RequestPort {
        attribute req : UserRequest;
    }

    port def StatusPort {
        attribute status : StatusSignal;
    }

    part def Requirement {
        attribute id : String;
        attribute text : String;
    }

    part def UserRequestInterfaceSubsystem {
        port requestIn : RequestPort;
        port statusOut : StatusPort;
    }

    part def DoorInteractionSubsystem {}

    part def ReadinessHoldingSubsystem {}

    part def MotionManagementSubsystem {}

    part def MountingEnclosureIntegrationSubsystem {}

    part def SafetyAssuranceSubsystem {}

    part def MaintenanceLifecycleSupportSubsystem {}

    part def AutomaticDoorOpeningAssistSystem {
        part userRequestInterface : UserRequestInterfaceSubsystem;
        part doorInteraction : DoorInteractionSubsystem;
        part readinessHolding : ReadinessHoldingSubsystem;
        part motionManagement : MotionManagementSubsystem;
        part mountingIntegration : MountingEnclosureIntegrationSubsystem;
        part safetyAssurance : SafetyAssuranceSubsystem;
        part maintenanceLifecycle : MaintenanceLifecycleSupportSubsystem;
        attribute openingForceCapability_lbf : Real = 11.375;
    }

    part system : AutomaticDoorOpeningAssistSystem;

    part req_R_MSN_001 : Requirement {
        id = "R-MSN-001";
        text =
            "The system shall enable an interior hinged door to open automatically for an accessibility user when requested.";
    }
    part req_R_MSN_002 : Requirement {
        id = "R-MSN-002";
        text =
            "The system shall be designed as an add-on for existing doors that already use traditional door-closer hardware.";
    }
    part req_R_MSN_003 : Requirement {
        id = "R-MSN-003";
        text =
            "The system shall be suitable for installation on a large number of doors in an institutional campus setting, not just exterior entrances.";
    }
    part req_R_MSN_004 : Requirement {
        id = "R-MSN-004";
        text =
            "The system shall improve user independence by reducing reliance on assistance from other people for routine door access.";
    }

    part req_R_FUNC_001 : Requirement {
        id = "R-FUNC-001";
        text =
            "The system shall provide a user-initiated means to request automatic opening without requiring the user to manipulate a door knob.";
    }
    part req_R_FUNC_002 : Requirement {
        id = "R-FUNC-002";
        text =
            "The primary initiation interface shall be compatible with push-button actuation appropriate for accessibility users.";
    }
    part req_R_FUNC_003 : Requirement {
        id = "R-FUNC-003";
        text =
            "The system shall open the door against the resistance of the existing door closer and typical hinge or friction loads.";
    }
    part req_R_FUNC_004 : Requirement {
        id = "R-FUNC-004";
        text =
            "The system shall support a ready state in which it is prepared to perform an opening upon request without unintended actuation.";
    }
    part req_R_FUNC_005 : Requirement {
        id = "R-FUNC-005";
        text =
            "The system shall not impede or materially increase resistance during normal door closing under the door closer.";
    }
    part req_R_FUNC_006 : Requirement {
        id = "R-FUNC-006";
        text =
            "The system shall ensure that the automatic opening motion occurs in the intended opening direction and does not reverse the door expected behavior.";
    }
    part req_R_FUNC_007 : Requirement {
        id = "R-FUNC-007";
        text =
            "After completing an opening cycle or after a cancellation the system shall return to a defined standby state suitable for subsequent use.";
    }

    part req_R_PERF_001 : Requirement {
        id = "R-PERF-001";
        text =
            "The system shall be capable of opening doors with an opening force requirement up to at least 11.375 lbf.";
    }
    part req_R_PERF_002 : Requirement {
        id = "R-PERF-002";
        text =
            "The system shall open the door to a usable open position sufficient for wheelchair passage under normal operating conditions.";
    }
    part req_R_PERF_003 : Requirement {
        id = "R-PERF-003";
        text =
            "Upon user request the system shall begin the opening action within a short user acceptable delay and proceed with controlled motion.";
    }
    part req_R_PERF_004 : Requirement {
        id = "R-PERF-004";
        text =
            "The system shall provide repeatable opening performance across repeated cycles without requiring re-adjustment between typical uses.";
    }

    part req_R_CNST_001 : Requirement {
        id = "R-CNST-001";
        text =
            "The system shall be designed to be lower-cost than typical electrically-driven automatic door operators suitable for scaling across many doors.";
    }
    part req_R_CNST_002 : Requirement {
        id = "R-CNST-002";
        text =
            "The system shall be installable without requiring specialized high-skill labor for each door installation supporting scalable deployment.";
    }
    part req_R_CNST_003 : Requirement {
        id = "R-CNST-003";
        text =
            "The system shall be compatible with common door closer interface geometries and shall tolerate variation in existing door hardware across buildings.";
    }
    part req_R_CNST_004 : Requirement {
        id = "R-CNST-004";
        text =
            "The system shall be simple and intuitive for both accessibility users and general building occupants minimizing the need for training.";
    }
    part req_R_CNST_005 : Requirement {
        id = "R-CNST-005";
        text =
            "The system shall fit within a practical on-door or near-door packaging envelope and shall include an enclosure appropriate for building environments.";
    }

    part req_R_SAFE_001 : Requirement {
        id = "R-SAFE-001";
        text =
            "The system shall provide controlled door motion such that the opening action does not create unsafe rapid movement for nearby pedestrians.";
    }
    part req_R_SAFE_002 : Requirement {
        id = "R-SAFE-002";
        text =
            "The system shall prevent user contact with hazardous moving elements during normal operation and typical interaction.";
    }
    part req_R_SAFE_003 : Requirement {
        id = "R-SAFE-003";
        text =
            "In the presence of a fault jam or abnormal operating condition the system shall transition to a safe state that avoids uncontrolled door motion.";
    }
    part req_R_SAFE_004 : Requirement {
        id = "R-SAFE-004";
        text =
            "The system shall minimize pinch points and entrapment hazards introduced by the add-on mechanism.";
    }

    part req_R_RAM_001 : Requirement {
        id = "R-RAM-001";
        text =
            "The system shall withstand frequent daily use in a public building environment without loss of function.";
    }
    part req_R_RAM_002 : Requirement {
        id = "R-RAM-002";
        text =
            "The system shall maintain its readiness or standby condition for extended periods without unintended actuation or loss of ability to operate when requested.";
    }
    part req_R_RAM_003 : Requirement {
        id = "R-RAM-003";
        text =
            "The system shall allow inspection and maintenance using common tools and replaceable wear items shall be accessible.";
    }
    part req_R_RAM_004 : Requirement {
        id = "R-RAM-004";
        text =
            "The system shall operate reliably under typical indoor building conditions including dust incidental impacts and temperature variation within conditioned spaces.";
    }

    part req_R_VER_001 : Requirement {
        id = "R-VER-001";
        text =
            "The opening capability shall be verifiable by test on representative doors spanning measured opening force requirements up to the specified baseline.";
    }
    part req_R_VER_002 : Requirement {
        id = "R-VER-002";
        text =
            "Non-interference during door closing shall be verifiable by comparing closing behavior time or effort with and without the installed system.";
    }
    part req_R_VER_003 : Requirement {
        id = "R-VER-003";
        text =
            "Repeatability shall be verifiable by conducting a multi-cycle endurance test demonstrating consistent operation across repeated open and close cycles.";
    }
    part req_R_VER_004 : Requirement {
        id = "R-VER-004";
        text =
            "Safe-state behavior shall be verifiable by induced fault or jam scenarios demonstrating controlled stop and absence of hazardous motion.";
    }
}
