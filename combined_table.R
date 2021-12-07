
# 비만율 ------------------------------------------

setwd('C:/workspace/mini_project/project_data/demographic/tumor_research/causation')
outlier <- read.csv('비만율(2017-2019).csv',header=T)
head(outlier)

outlier <- data.frame(city,x,y,level)
table(outlier$x)


outlier_dat <- outlier[-c(3:11),] #학년별 데이터 제거 
outlier_dat <- outlier_dat[-c(2,nrow(outlier_dat)),]
outlier_dat <- outlier_dat[,-1]
head(outlier_dat)



ext_dat <- outlier_dat[,2:ncol(outlier_dat)]
head(ext_dat)
ext_dat2 <- ext_dat[,c(1,2,11,20,29)] #전체만 extracting 


write.csv(ext_dat2,file='results/obesity_rate.csv')



# 병원 위치 ------------------------------------------

setwd('C:/workspace/mini_project/project_data/clinic_service/hospital_loc')
dt <- read.csv('(결측치처리)병원정보서비스(2021).csv',header=T)
# 21=병원 
head(dt)

lev_dt <- subset(dt, level < 12) # 상급종합 ~ 병원까지 

write.csv(lev_dt, file='C:/workspace/mini_project/project_data/results/clinic_location.csv')
                


# 보건소 ---------------------------------------------

setwd('C:/workspace/mini_project/project_data/clinic_service/center_info')
dt <- read.csv('보건소_보건지소_보건진료소_수_20211206180604.csv', header=T)

dat2 <- dt[,-c(1,4:7,9:12,14:17)] #전국 row 삭제

write.csv(dt, file='C:/workspace/mini_project/project_data/results/bogunso.csv')


# 공공 의료 기관 인력 ---------------------------------------------


setwd('C:/workspace/mini_project/project_data/clinic_service/center_info')
dt <- read.csv('시도별_공공의료기관_인력_현황_20211206170910.csv', header=T)

dat2 <- dt[,c(1,2,7,13,18,24,29)] #전국 row 삭제

write.csv(dat2, file='C:/workspace/mini_project/project_data/results/human_resource.csv')


# 보건소 인력 현황 ---------------------------------------------


setwd('C:/workspace/mini_project/project_data/clinic_service/center_info')
dt <- read.csv('보건소_인력현황시도별_20211206174947.csv', header=T)

dat2 <- dt[,-c(3,6,9)] #전국 row 삭제
dat3 <- dat2[-2,]

write.csv(dat2, file='C:/workspace/mini_project/project_data/results/bogun_human_resource.csv')

