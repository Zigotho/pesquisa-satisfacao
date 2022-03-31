import { Module } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { SurveyController } from './survey.controller';
import { SurveyService } from './survey.service';

@Module({
  controllers: [SurveyController],
  providers: [SurveyService, PrismaService],
})
export class SurveyModule {}
