--[[
  __                .__          
_/  |_  ____   ____ |  |   ______
\   __\/  _ \ /  _ \|  |  /  ___/
 |  | (  <_> |  <_> )  |__\___ \ 
 |__|  \____/ \____/|____/____  >
                              \/ 
                              
--]]
----todo: armaduras

minetest.register_tool("tutorialmod:machado_gaburita", {
    description = "machado gaburita",
    inventory_image = "machado_gaburita.png",
    tool_capabilities = {
        full_punch_interval = 1.2,
        max_drop_level = 0,
        groupcaps = {
            choppy = {times={[1]=3.00, [2]=1.60, [3]=0.80}, uses=10, maxlevel=1},
        },
        damage_groups = {fleshy=2},
    },
    sound = {breaks = "default_tool_breaks"},--som ao quebrar
})
