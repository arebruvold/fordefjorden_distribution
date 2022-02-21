# Sedimentation speed calculator using Stoke's Law:

sedimentation_mm_hour <- function(radius_nm, density_gcm3, xG){
  1000*60*60*(2*9.81*xG*(density_gcm3 - 1)*1000*(radius_nm*10^(-9))^2)/(9*0.01)
}

mytheme <- theme_bw()+theme(
  axis.text.x = element_text(angle = 90, hjust = 1),
  legend.position = "top",
  legend.key = element_rect(fill = "white", colour = "black", size = rel(0.5)),
  axis.text = element_text(size = rel(0.7)),
  legend.text = element_text(size = rel(0.7)),
  legend.title = element_text(size = rel(0.7))
)

