"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestTypeInheritance,
	#superclass : #PackageManifest,
	#category : #'TypeInheritance-Manifest'
}

{ #category : #'code-critics' }
ManifestTypeInheritance class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#RectangleClass #draw #false)) #'2022-11-16T12:15:29.89484-05:00') #(#(#RGMethodDefinition #(#TriangleClass #draw #false)) #'2022-11-16T12:35:44.131003-05:00') )
]
