#include <sourcemod>
#include <sdktools>

#pragma semicolon 1
#pragma newdecls required

#define MAX_FAKE_SURVIVORS 5

public Plugin myinfo =
{
    name = "NMRiH Fake Survivors",
    author = "Ghost_Breaker",
    description = "Creates fake survivors for local testing.",
    version = "1.0"
};

public void OnPluginStart()
{
    RegAdminCmd(
        "sm_fakesurvivors",
        Command_CreateFakeSurvivors,
        ADMFLAG_ROOT,
        "Creates fake survivors."
    );
}

public Action Command_CreateFakeSurvivors(int client, int args)
{
    int created;

    for (int i = 1; i <= MAX_FAKE_SURVIVORS; i++)
    {
        if (CreateFakeSurvivor(i))
        {
            created++;
        }
    }

    PrintToServer(
        "[FakeSurvivors] Created %d/%d fake survivors.",
        created,
        MAX_FAKE_SURVIVORS
    );

    return Plugin_Handled;
}

bool CreateFakeSurvivor(int number)
{
    char name[32];
    Format(name, sizeof(name), "Survivor_%d", number);

    int bot = CreateFakeClient(name);

    if (bot == 0)
    {
        PrintToServer("[FakeSurvivors] Failed to create %s.", name);
        return false;
    }

    DispatchKeyValue(bot, "classname", "survivorbot");
    DispatchSpawn(bot);

    return true;
}