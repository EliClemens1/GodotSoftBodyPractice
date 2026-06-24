# **Softbody2D:**

###### 

###### **Basic Setup:**

1. At the top of the window click **AssetLib**. 
2. Search: SoftBody2D
3. Download SoftBody2D by MIT
4. Project -> Project Settings -> Plugins -> Enable Plugin



###### You should now be able to add softbody nodes.



Skeleton must be added with "Bones" for children. This skeleton must be assigned in the "Skeleton" property in the inspector, so Godot knows which skeleton to assign to the Texture. This is already done for the SoftBody2D node. This may be important to be aware of later.





###### **Inspector Properties:**



* **Texture** is where sprite is assigned. I have read animated sprites can be used. 
* **Bias** to 1 or 2 to make Guppy bouncy.
* **PinJoint**.**Softness**: Make Guppy more firm. Less likely to fit between cracks
* **Joint.DampenedSpringJoint.Stiffness**: make more stiff. Similar to softness
