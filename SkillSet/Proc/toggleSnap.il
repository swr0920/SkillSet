procedure(toggleSnap()
    case(hiGetCurrentWindow()->segSnapMode
        ("orthogonal" hiGetCurrentWindow()->segSnapMode="diagonal"
                      hiGetCurrentWindow()->snapMode="diagonal"
                      )
;                      le0MoveForm->segSnapMode->value="diagonal")
        ("diagonal"   hiGetCurrentWindow()->segSnapMode="anyAngle"
                      hiGetCurrentWindow()->snapMode="anyAngle"
                      )
;                      le0MoveForm->segSnapMode->value="anyAngle")
        (t            hiGetCurrentWindow()->segSnapMode="orthogonal"
                      hiGetCurrentWindow()->snapMode="orthogonal"
                      )
;                      le0MoveForm->segSnapMode->value="orthogonal")
    )
    printf("SegSnapMode : %L\n" hiGetCurrentWindow()->segSnapMode)
)
